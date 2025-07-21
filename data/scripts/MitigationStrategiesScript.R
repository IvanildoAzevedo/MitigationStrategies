required_packages <- c("readxl", "dplyr", "tidyr", "purrr", "library", "broom", "pheatmap", "ggplot2", "library", "vcd")

installed_packages <- rownames(installed.packages())
for (pkg in required_packages) {
  if (!(pkg %in% installed_packages)) {
    install.packages(pkg)
  }
}


library(readxl)
library(dplyr)
library(tidyr)
library(purrr)
library(broom)
library(pheatmap)
library(ggplot2)
library(vcd)

this_file <- dirname(rstudioapi::getSourceEditorContext()$path)
setwd(this_file)

dados <- read_excel("CorrMitTTVsMacroCategories.xlsx", sheet = "CorrMitTTVsMacroCategories")

amenacas <- c("Internal", "External", "Conclusion", "Construct")

categorias <- c(
  "C1",
  "C2",
  "C3",
  "C4"
)

calc_phi <- function(tab) {
  if(all(dim(tab) == c(2,2))) {
    phi <- tryCatch({
      assocstats(tab)$phi
    }, error = function(e) NA_real_)
    return(phi)
  } else {
    return(NA_real_)
  }
}

calc_pvalue <- function(tab) {
  if(all(dim(tab) == c(2,2))) {
    p <- tryCatch({
      fisher.test(tab)$p.value
    }, error = function(e) NA_real_)
    return(p)
  } else {
    return(NA_real_)
  }
}

resultados <- expand.grid(amenaca = amenacas, categoria = categorias, stringsAsFactors = FALSE) %>%
  mutate(
    p_value = map2_dbl(amenaca, categoria, ~ {
      tab <- table(dados[[.x]], dados[[.y]])
      calc_pvalue(tab)
    }),
    phi = map2_dbl(amenaca, categoria, ~ {
      tab <- table(dados[[.x]], dados[[.y]])
      calc_phi(tab)
    })
  ) %>%
  arrange(p_value)

print(resultados)

resultados <- resultados %>%
  mutate(
    amenaca = factor(amenaca, levels = c("Internal", "External", "Conclusion", "Construct")),
    categoria = factor(categoria),
    signif = ifelse(p_value < 0.05, "*", "")  # adiciona asterisco quando p < 0.05
  )

p <- ggplot(resultados, aes(x = categoria, y = amenaca, fill = phi)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "white", high = "blue", limits = c(0,1)) +
  geom_text(aes(label = signif), color = "red", size = 10, vjust = -0.1) + 
  geom_text(aes(label = round(phi, 2)), color = "black", size = 6, vjust = 0.5) + 
  labs(title = "",
       x = "Mitigation categories",
       y = "Types of TTVs",
       fill = "Phi") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 0, hjust = 0.5, size = 15, color = "black"),
    axis.text.y = element_text(size = 15, color = "black"),
    axis.title.x = element_text(size = 13, color = "gray"),
    axis.title.y = element_text(size = 13, color = "gray"),
    legend.title = element_text(size = 12, face = "bold", color = "black"),
    legend.text = element_text(size = 10),                                 
    legend.key.height = unit(1.5, "cm")                                   
  )

ggsave("heatmap.pdf", plot = p, width = 5.5, height = 4)

ggsave("heatmap.png", plot = p, width = 5.5, height = 4)

getwd()
# https://www.ibge.gov.br/estatisticas/economicas/comercio/9227-pesquisa-mensal-de-comercio.html
# AUTOR: Paulo Roberto Carneiro de Sá - Analista de Dados

getwd()

# Pacotes -----------------------------------------------------------------

# Carregar pacotes
library(sidrar)
library(magrittr)
library(dplyr)
library(lubridate)
library(tidyr)
library(ggplot2)



# Dados -------------------------------------------------------------------


# Coletar dados
dados_brutos <- sidrar::get_sidra(
  api = paste0(
    "/t/8881/n1/all/v/all/p/all/c11046/56736/d/v7169%205",
    ",v7170%205,v11708%201,v11709%201,v11710%201,v11711%201"
    )
  )

# Tratamento de dados
dados <- dados_brutos %>%
  dplyr::mutate(
    data = lubridate::ym(`Mês (Código)`),
    variavel = dplyr::recode(
      .x = Variável,
      "PMC - Número-índice (2022=100)" = "Nº índice",
      "PMC - Número-índice com ajuste sazonal (2022=100)" = "Nº índice s.a.",
      "PMC - Variação mês/mês imediatamente anterior, com ajuste sazonal (M/M-1)" = "Var. % margem",
      "PMC - Variação mês/mesmo mês do ano anterior (M/M-12)" = "Var. % interanual",
      "PMC - Variação acumulada no ano (em relação ao mesmo período do ano anterior)" = "Var. % acum. no ano",
      "PMC - Variação acumulada em 12 meses (em relação ao período anterior de 12 meses)" = "Var. % anual"
      ),
    valor = Valor,
    .keep = "none"
    ) %>%
  tidyr::drop_na() %>%
  dplyr::as_tibble()



# Visualização de dados ---------------------------------------------------


# Cria gráfico de linha

ggplot2::ggplot(data = dados) +
  ggplot2::aes(x = data, y = valor, color = variavel) +
  ggplot2::geom_line(size = 1) +
  ggplot2::facet_wrap(facets = ~variavel, scales = "free")



ggplot2::ggplot(data = dados) +
  ggplot2::aes(x = data, y = valor, color = variavel) +
  ggplot2::geom_line(size = 1.5) +
  ggplot2::labs(title = "Desempenho da PMC - Pesquisa Mensal de Comércio",
                x = "Data", y = "Valor") +
  ggplot2::scale_color_discrete(name = "Variável") +
  ggplot2::theme_minimal() +
  ggplot2::theme(axis.text.x = element_text(angle = 45, hjust = 1),
                 legend.position = "bottom")



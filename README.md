# Pesquisa_Mensal_Comercio
# Analise de Conjuntura 
Recentemente, tive a oportunidade de explorar a PMC - Pesquisa Mensal de Comércio, utilizando a API do IBGE a partir da linguagem R. Gostaria de compartilhar algumas descobertas interessantes!

Coletando os dados:
Através do pacote "sidrar" no R, obtive acesso aos dados brutos da PMC. Utilizando a função get_sidra(), fiz uma chamada à API do IBGE e coletei informações abrangentes sobre o setor de comércio. Isso me permitiu ter uma visão ampla do desempenho do comércio nos últimos períodos.

Tratando e explorando os dados:
Após a coleta dos dados, utilizei as bibliotecas "dplyr", "lubridate" e "tidyr" para realizar o tratamento adequado. Através de transformações e filtragens, criei um conjunto de dados consistente para a análise.

Principais conclusões:
Durante a análise, destaquei algumas variáveis chave que forneceram insights valiosos sobre o setor de comércio. Aqui estão algumas das conclusões mais relevantes:

1️⃣ Número-índice: durante a análise, observei a evolução das vendas ao longo do tempo, utilizando o ano de 2022 como base de comparação. Isso me permitiu identificar tendências de crescimento ou queda no setor.
2️⃣ Variação mês a mês: Com a variação mês a mês, ajustada sazonalmente, pude analisar o desempenho das vendas em relação ao mês imediatamente anterior. Essa análise revelou informações valiosas sobre a sazonalidade do setor e possíveis padrões de consumo.
3️⃣ Variação mês a mês (interanual): Através da variação mês a mês em relação ao mesmo mês do ano anterior, obtive uma visão do crescimento ou declínio das vendas ao longo do tempo. Essa análise permitiu identificar flutuações sazonais anuais e avaliar o desempenho do setor em relação a períodos anteriores.

Compartilhando insights:
Com base nessas análises, fiquei impressionado com a resiliência do setor de comércio, que enfrentou desafios significativos, como a pandemia, mas mostrou sinais de recuperação e adaptação. Essa análise fornece informações valiosas para empresas do setor, auxiliando na tomada de decisões estratégicas e identificação de oportunidades.

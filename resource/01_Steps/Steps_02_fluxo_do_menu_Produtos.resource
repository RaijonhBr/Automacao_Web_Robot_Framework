*** Settings ***

Library            Browser

Resource            ../03_Metodos/Metodos_globais.resource
Resource            ../02_Variaveis/Massas.resource


*** Keywords ***
################ Cénario 01: Validando 1º Card da pagina "Empréstimo Consignado"
  
realizo a pesquisar na lupa por "Empréstimo Consignado"
    Pesquiso na lupa por "Empréstimo Consignado"
sistema exibe o resultado da pesquisa na lupa
    validação da exibição do 1º Card
    validação da exibição do 2º Card
    validação da exibição do 3º Card
    Validação da tela com texto "Se inscreva em nossa Newsletter"
    Validação da tela (1 - com imagem) - Contendo: Empréstimo Consignado; 
seleciono o primeiro card da pagina "Empréstimo Consignado"
    Clico no 1º card
sistema exibe as informações do 1º card da pagina "Empréstimo Consignado"
    Validação do Titulo da pagina após clicar no card
    Validação da tela (2 - com imagem) - Contendo: Home; Produtos;

################# Cénario 02: Validando 1º Card da pagina "Empréstimo Pessoal"
realizo a pesquisar na lupa por "Empréstimo Pessoal"           
    Pesquiso na lupa por "Empréstimo Pessoal"
seleciono o primeiro card da pagina "Empréstimo Pessoal"
    Clico no 1º card
sistema exibe as informações do 1º card da pagina "Empréstimo Pessoal"
    Validação do Titulo da pagina após clicar no card
    Validação da tela (2 - com imagem) - Contendo: Home; Produtos;
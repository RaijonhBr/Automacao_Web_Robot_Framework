*** Settings ***

Library            Browser

Resource            ../03_Metodos/Metodos_globais.resource
Resource            ../02_Variaveis/Massas.resource


*** Keywords ***
################### Cénario 01: O Agibank - Escolhendo a opção "Colunas" (com e-mail assinado na Newsletter)
esteja na pagina inicial do Blog Agibank
    Validação da tela (2 - sem imagem) - Contendo: O Agibank; Produtos
    Validação da tela (2 - sem imagem) - Contendo: Serviços; Suas finanças
    Validação da tela (2 - sem imagem) - Contendo: Sua segurança; Stories
    Validação da tela (1 - com imagem) - Contendo: O Agibank; 
    Validação da tela (1 - sem imagem) - Contendo: Stories
escolho no Menu "O Agibank" escolhendo aopção "Colunas" 
    Clico na opção "O Agibank"
    Validação da tela (3 - sem imagem) - Contendo: Colunas; Notícias; Carreira
    Clico na opção "Colunas"
sistema exibe as informações da pagina "Colunas"
    validação da exibição do 1º Card
    validação da exibição do 2º Card
    validação da exibição do 3º Card
    Validação da tela com texto "Se inscreva em nossa Newsletter"
    Validação da tela (1 - com imagem) - Contendo: Coluna; 
informo o e-mail na Newsletter
    Informo no campo "Endereço de e-mail": "${Email}"
seleciono no botão Assinar
    Clico no botão "Assinar"
sistema exibe mensagem que e-mail ja esta assinado
    Validação da tela com texto "Você já assinou este site. Verifique sua caixa de entrada. Você pode gerenciar suas preferências no"


################### Cénario 02: O Agibank - Escolhendo a opção "Noticias" (com e-mail assinado na Newsletter)
escolho no Menu "O Agibank" escolhendo a opção "Notícias"     
    Clico na opção "O Agibank"
    Validação da tela (3 - sem imagem) - Contendo: Colunas; Notícias; Carreira
    Clico na opção "Notícias"
sistema exibe a as informações da pagina "Notícias"    
    validação da exibição do 1º Card
    validação da exibição do 2º Card
    validação da exibição do 3º Card
    Validação da tela com texto "Se inscreva em nossa Newsletter"
    Validação da tela (1 - com imagem) - Contendo: Notícias; 

################## Cénario 03: O Agibank - Escolhendo a opção "Carreira" (com e-mail assinado na Newsletter)
escolho no Menu "O Agibank" escolhendo a opção "Carreira" 
    Clico na opção "O Agibank"
    Validação da tela (3 - sem imagem) - Contendo: Colunas; Notícias; Carreira
    Clico na opção "Carreira"
sistema exibe a as informações da pagina "Carreira"
    validação da exibição do 1º Card
    validação da exibição do 2º Card
    validação da exibição do 3º Card
    Validação da tela com texto "Se inscreva em nossa Newsletter"
    Validação da tela (1 - com imagem) - Contendo: Carreira;
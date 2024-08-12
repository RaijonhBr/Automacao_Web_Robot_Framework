*** Settings ***
Resource            ../../resource/02_Variaveis/Conexao_Web.resource
Resource            ../../resource/01_Steps/Steps_01_fluxo_do_menu_O_Agibank.resource

Test Setup       Abri o Blog do Agibank
test Teardown    Fechar navegador

*** Test Cases ***
Cénario 01.01: No menu O Agibank - Escolhendo a opção "Colunas" (com e-mail assinado na Newsletter)
    [Tags]    Cénario 01.01: No menu O Agibank - Escolhendo a opção "Colunas" (com e-mail assinado na Newsletter)
    [Documentation]    Nesse cenario estamos validando o Titulo de Colunas, dos 3 primeiros card exibidos e Newsletter (com e-mail já assinado)
    
    Given esteja na pagina inicial do Blog Agibank        
    When escolho no Menu "O Agibank" escolhendo a opção "Colunas"         
    And sistema exibe as informações da pagina "Colunas"
    And informo o e-mail na Newsletter
    Then seleciono no botão Assinar    
    # Then sistema exibe mensagem que e-mail ja esta assinado    

Cénario 01.02: No menu O Agibank - Escolhendo a opção "Noticias" (com e-mail assinado na Newsletter)
    [Tags]    Cénario 01.02: No menu O Agibank - Escolhendo a opção "Noticias" (com e-mail assinado na Newsletter)
    [Documentation]    Nesse cenario estamos validando o Titulo de Notícias, dos 3 primeiros card exibidos e Newsletter (com e-mail já assinado)

    Given esteja na pagina inicial do Blog Agibank
    When escolho no Menu "O Agibank" escolhendo a opção "Notícias"         
    And sistema exibe a as informações da pagina "Notícias"    
    And informo o e-mail na Newsletter
    Then seleciono no botão Assinar    
    # Then sistema exibe mensagem que e-mail ja esta assinado  

Cénario 01.03: No menu O Agibank - Escolhendo a opção "Carreira" (com e-mail assinado na Newsletter)
    [Tags]    Cénario 01.03: No menu O Agibank - Escolhendo a opção "Carreira" (com e-mail assinado na Newsletter)
    [Documentation]    Nesse cenario estamos validando o Titulo de Carreita, dos 3 primeiros card exibidos e Newsletter (com e-mail já assinado)

    Given esteja na pagina inicial do Blog Agibank
    When escolho no Menu "O Agibank" escolhendo a opção "Carreira" 
    And sistema exibe a as informações da pagina "Carreira"
    And informo o e-mail na Newsletter
    Then seleciono no botão Assinar    
    # Then sistema exibe mensagem que e-mail ja esta assinado  
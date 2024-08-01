*** Settings ***
Resource            ../../resource/02_Variaveis/Conexao_Web.resource
Resource            ../../resource/01_Steps/Steps_01_fluxo_do_menu_O_Agibank.resource
Resource            ../../resource/01_Steps/Steps_02_fluxo_do_menu_Produtos.resource

Test Setup       Abri o Blog do Agibank
test Teardown    Fechar navegador

*** Test Cases ***
Cénario 02.01: Validando 1º Card da pagina "Empréstimo Consignado" (pesquisando pela lupa)
    [Tags]    Cénario 02.01: Validando 1º Card da pagina "Empréstimo Consignado" (pesquisando pela lupa)
    [Documentation]    Realizo a pesquisa na lupa por "Empréstimo Consignado"
    ...
    ...                Em seguida clico no 1º card da pagina e vejo se exibir as informações
    
    Given esteja na pagina inicial do Blog Agibank        
    When realizo a pesquisar na lupa por "Empréstimo Consignado"           
    And sistema exibe o resultado da pesquisa na lupa
    And seleciono o primeiro card da pagina "Empréstimo Consignado"
    Then sistema exibe as informações do 1º card da pagina "Empréstimo Consignado"

Cénario 02.02: Validando 1º Card da pagina "Empréstimo Pessoal" (pesquisando pela lupa)
    [Tags]    Cénario 02.02: Validando 1º Card da pagina "Empréstimo Pessoal" (pesquisando pela lupa)
    [Documentation]    Realizo a pesquisa na lupa por "Empréstimo Pessoal"
    ...
    ...                Em seguida clico no 1º card da pagina e vejo se exibir as informações
    
    Given esteja na pagina inicial do Blog Agibank        
    When realizo a pesquisar na lupa por "Empréstimo Pessoal"           
    And sistema exibe o resultado da pesquisa na lupa
    And seleciono o primeiro card da pagina "Empréstimo Pessoal"
    Then sistema exibe as informações do 1º card da pagina "Empréstimo Pessoal"    

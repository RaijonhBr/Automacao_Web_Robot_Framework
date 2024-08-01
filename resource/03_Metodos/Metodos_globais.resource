*** Settings ***
Library            Browser

Resource            ../02_Variaveis/Variaveis.resource

*** Keywords ***
################# >>> Metodos de validações de tela <<< ########################
Validação da tela (1 - sem imagem) - Contendo: ${Variavel_1}
    Log To Console        Validação da tela - Contendo: ${Variavel_1}   
    # Get Element States    //*[contains(text(),'${Variavel_1}')]     validate    value
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_1}')])[1]    validate    value
    Log To Console        Validação concluída!\n

Validação da tela (2 - sem imagem) - Contendo: ${Variavel_1}; ${Variavel_2} 
    Log To Console        Validação da tela - Contendo: ${Variavel_1}; ${Variavel_2}
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_1}')])[1]    validate    value
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_2}')])[1]    validate    value
    Log To Console        Validação concluída!\n

Validação da tela (3 - sem imagem) - Contendo: ${Variavel_1}; ${Variavel_2}; ${Variavel_3} 
    Log To Console        Validação da tela - Contendo: ${Variavel_1}; ${Variavel_2}; ${Variavel_3} 
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_1}')])[1]    validate    value
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_2}')])[1]    validate    value
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_3}')])[1]    validate    value
    Log To Console        Validação concluída!\n
Validação da tela (1 - com imagem) - Contendo: ${Variavel_1}; 
    Log To Console        Validação da tela - Contendo: ${Variavel_1}; 
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_1}')])[1]    validate    value
    Take Screenshot       ${Variavel_1}   
    Log To Console        Validação concluída!\n

Validação da tela (2 - com imagem) - Contendo: ${Variavel_1}; ${Variavel_2} 
    Log To Console        Validação da tela - Contendo: ${Variavel_1}; ${Variavel_2}
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_1}')])[1]    validate    value
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_2}')])[1]    validate    value
    Take Screenshot       ${Variavel_1}   
    Log To Console        Validação concluída!\n

Validação da tela (3 - com imagem) - Contendo: ${Variavel_1}; ${Variavel_2}; ${Variavel_3} 
    Log To Console        Validação da tela - Contendo: ${Variavel_1}; ${Variavel_2}; ${Variavel_3} 
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_1}')])[1]    validate    value 
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_2}')])[1]    validate    value
    Get Element States    (//span[@class='menu-text'][contains(.,'${Variavel_3}')])[1]    validate    value
    Take Screenshot       ${Variavel_1}   
    Log To Console        Validação concluída!\n

validação da exibição do ${Posiscao_Card}º Card
    ${Validacao_card}    Get Text    (//a[contains(@rel,'bookmark')])[${Posiscao_Card}]
    Log    Titulo do ${Posiscao_Card}º: ${Validacao_card}
    Log to console   Titulo do ${Posiscao_Card}º: ${Validacao_card}\n
    # Get Element States   //a[contains(.,'${Validacao_card}')]   validate    value & visible


Validação da tela com texto "${txt}"
    Log To Console    Validação da tela com texto "${txt}"\n
    Get Attribute Names    text="${txt}"
    Take Screenshot    ${txt}

Validação do Titulo da pagina após clicar no card
    Log To Console    Validação da pagina após clicar nos card: ${Card} \n
    Get Element States        //h1[contains(.,'${Card}')]    validate    value
    Take Screenshot    

################# >>> Metodos de clicar <<< ########################
Clico na opção "${Variavel_1}"
    Log To Console    Clico na opção "${Variavel_1}"\n
    Click    (//span[@class='menu-text'][contains(.,'${Variavel_1}')])[1]

Clico no Menu "${Variavel_1}"
    Log To Console    Clico no Menu "${Variavel_1}"\n
    Click    (//span[@class='menu-text'][contains(.,'${Variavel_1}')])[1]

Clico no botão "${Botao}"
    Log To Console    Clico no botão "${Botao}"\n
    Click    text="${Botao}"

Clico no ${Posiscao_Card}º card
    ${Card}    Get Text    (//a[contains(@rel,'bookmark')])[${Posiscao_Card}]
    Set Test Variable    ${Card}
    Log    Clico no ${Posiscao_Card}º card com Titulo: "${Card}"
    Log to console   Clico no ${Posiscao_Card}º card com Titulo: "${Card}"\n
    Click    text=${Card}


################## >>> Metodos de inserção de dados <<< #####################
Informo no campo "${Campo}": "${Informacao}"
    Log To Console    Informo no campo "${Campo}": "${Informacao}"\n
    Fill Text        //input[contains(@placeholder,'${Campo}')]    ${Informacao} 

######################## >>> Metodos de pesquisar pela lupa <<< ########################
Pesquiso na lupa por "${Pesquisa}"
    Log To Console    Realizo a pesquisar na lupa por "${Pesquisa}"\n
    Click    ${Icone_Lupa}
    Fill Text    //input[contains(@type,'search')]   ${Pesquisa}
    Click    ${Icone_Lupa}
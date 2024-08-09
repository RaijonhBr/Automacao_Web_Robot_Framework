*** Settings ***
Library    Browser
Library    DateTime
Library    FakerLibrary    


*** Variables ***
${Navegador}                chromium        #<<<< Suporta Edger e Chrome
# ${Navegador}                firefox        #<<<< Suporta Firefox
${Headless}                 ${False} 
${URL}                      https://blogdoagi.com.br/                #<<<< URL do site



*** Keywords ***
Abri o Blog do Agibank    # Parametros de qual navegador abri e habilitar informações do navegador
    New Browser    ${Navegador}           
    # ...            ${Headless}                # <<< Ao comentar essa linha a automação roda sem a exibição da tela
    # ...            args=["--start-maximized"]
    

    ${TRACE_NAME}    FakerLibrary.Uuid 4
    ${NOW}           Get Current Date    result_format=%d-%m-%Y_%H%M%S
       
    # Parametro para habilitar opções do navegador e dimensões
    New Context            
    ...                viewport={'width':2560, 'height':1440}    
    ...                ignoreHTTPSErrors=true      
    ...                tracing=/frontend/resource/05_Evidencias/traces/${NOW}/${TRACE_NAME}.zip
    # ...             recordVideo={'dir':'${OUTPUT_DIR}/Evidencias/videos/${NOW}'}            
   
    # Parametro para escolher a URL
    New Page        ${URL} 


Fechar navegador
    Take Screenshot    closed.jpeg
    Log To Console     Fechar navegador

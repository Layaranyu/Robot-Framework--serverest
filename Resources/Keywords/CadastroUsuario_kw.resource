*** Settings ***
Resource    ../Task/base.resource
Resource    ../Locators/Login_Locators.resource

Library    Process

*** Keywords ***

Gerar cadastro
    ${NOMEUSUARIO}  Name  
     Set Global Variable    ${NOMEUSUARIO}    ${NOMEUSUARIO}

    ${EMAILUSUARIO}     Email

    Set Global Variable    ${EMAILUSUARIO}    $${EMAILUSUARIO} 
Dado que estou na tela inicial
    Go To    ${BASE_URL}
    Wait Until Element Is Visible    ${VISIBLE_LOGIN}

E Clico em 'Cadastre-se'
    Click Element    ${CADASTRO}

Então deve acessar a tela de cadastro e preencher os dados correspondentes
    Click Element    ${INPUT_NOME}
    Input Text    ${INPUT_NOME}    ${NOMEUSUARIO}
    Input Text    ${INPUT_EMAIL}    ${EMAILUSUARIO}
    Input Text    ${INPUT_SENHA}    ${SENHA}
    Click Button    ${BUTTON_CADASTRO}
    Wait Until Element Is Visible    ${VISIBLE_CADASTROCOMSUCESSO}    3s


Preencho os dados do email e senha
    Click Element    ${INPUT_EMAIL}
    Input Text    ${INPUT_EMAIL}    ${EMAILUSUARIO}
    Input Text    ${INPUT_SENHA}    ${SENHA}

Então clico em entrar e acesso o site   
    Click Button    ${BUTTON_LOGIN}
    Sleep    5s
    Wait Until Page Contains Element    ${VISIBLESTORE} 





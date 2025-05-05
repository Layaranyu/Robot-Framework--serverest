*** Settings ***
Resource    base.resource



*** Keywords ***
Abrir Browser
    Open Browser    https://google.com.br    browser=chrome
    Sleep    3s
    Maximize Browser Window

Fechar Browser
    Close Browser

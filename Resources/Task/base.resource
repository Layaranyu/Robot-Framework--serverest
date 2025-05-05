*** Settings ***
Documentation       Base do projeto

Library    SeleniumLibrary
Library    String
Library    FakerLibrary     locale=pt_BR


*** Variables ***
${BASE_URL}       https://front.serverest.dev/login
${NOMEUSUARIO}            
${EMAILUSUARIO}   
${SENHA}          123456


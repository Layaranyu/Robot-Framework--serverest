*** Settings ***
Documentation       Arquivo de keywords


*** Variables ***
${VISIBLE_LOGIN}                    xpath=//h1[normalize-space()='Login']
${CADASTRO}                         xpath=//a[normalize-space()='Cadastre-se']
${INPUT_NOME}                       xpath=//input[@id='nome']
${INPUT_EMAIL}                      xpath=//input[@id='email']
${INPUT_SENHA}                      xpath=//input[@id='password']
${BUTTON_CADASTRO}                  xpath=//button[normalize-space()='Cadastrar']
${VISIBLE_CADASTROCOMSUCESSO}       xpath=//a[normalize-space()='Cadastro realizado com sucesso']
${BUTTON_LOGIN}                     xpath=//button[normalize-space()='Entrar']
${VISIBLESTORE}                     xpath=//h1[normalize-space()='Serverest Store']
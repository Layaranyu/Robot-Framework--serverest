*** Settings ***
Documentation       Cadastro de usuario

Resource            ../Resources/Task/hooks.resource
Resource            ../Resources/Keywords/CadastroUsuario_kw.resource

Suite Setup         Abrir Browser
Suite Teardown      Fechar Browser


*** Test Cases ***
Cadastro de usuario
    [Setup]    Gerar cadastro
    Dado que estou na tela inicial
    E Clico em 'Cadastre-se'
    Então deve acessar a tela de cadastro e preencher os dados correspondentes

Login de usuario
    Dado que estou na tela inicial
    Preencho os dados do email e senha
    Então clico em entrar e acesso o site

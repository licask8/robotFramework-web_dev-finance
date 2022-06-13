*** Settings ***
Documentation        Essa suite testa a aplicação dev-finance
Resource              devFinance_resorces.robot
Test Setup            Abrir navegador

Test Teardown         Fechar navegador

*** Test Cases ***
Caso de teste 01 - Cadastrar uma entrada
    [Documentation]        Esse teste adiciona uma entrada
    [Tags]                entrada
    Acessar a página devfinance-agilizei
    Cadastrar uma entrada
    # Verificar se foi feita a transação 
Caso de teste 02 - Cadastrar uma saida
    [Documentation]        Esse teste adiciona uma saida
    [Tags]                saida
    Acessar a página devfinance-agilizei
    Cadastrar saida
    #Verificar se foi feita a transação
Caso de teste 03 - Remover transações 
    [Documentation]        Esse teste remove transações
    [Tags]                remoção
    Acessar a página devfinance-agilizei
    Cadastrar uma entrada
    Cadastrar saida
    Wait Until Element Is Visible    locator=id=data-table
    Click Element    locator=//img[contains(@onclick,'Transaction.remove(0)')]
    Click Element    locator=//img[contains(@onclick,'Transaction.remove(0)')]

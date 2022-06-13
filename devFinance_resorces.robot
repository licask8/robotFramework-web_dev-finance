*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${URL}        https://devfinance-agilizei.netlify.app/#

*** Keywords ***
Abrir navegador
    Open Browser        browser=chrome
    Maximize Browser Window 

Fechar navegador
    Capture Page Screenshot
    Close Browser

Acessar a página devfinance-agilizei
    Go To        url=${URL}
    Wait Until Element Is Visible    locator=//img[contains(@alt,'Logo Dev Finance')] 

Cadastrar uma entrada    
    Click Element    locator=//a[contains(@onclick,'Modal.open()')] 
    Click Element    locator=//input[contains(@type,'text')]
    Input Text    locator=//input[contains(@type,'text')]    text=Sálario
    Click Element    locator=//input[contains(@type,'number')]
    Input Text    locator=//input[contains(@type,'number')]    text=3000
    Click Element    locator=//input[contains(@type,'date')]
    Input Text    locator=//input[contains(@type,'date')]    text=04-06-2022
    Click Element    locator=//button[contains(.,'Salvar')]

### test case 02


Cadastrar saida
    Acessar a página devfinance-agilizei
    Click Element    locator=//a[contains(@onclick,'Modal.open()')] 
    Click Element    locator=//input[contains(@type,'text')]
    Input Text    locator=//input[contains(@type,'text')]    text=compra
    Click Element    locator=//input[contains(@type,'number')]
    Input Text    locator=//input[contains(@type,'number')]    text=-500
    Click Element    locator=//input[contains(@type,'date')]
    Input Text    locator=//input[contains(@type,'date')]    text=04-06-2022
    Click Element    locator=//button[contains(.,'Salvar')]

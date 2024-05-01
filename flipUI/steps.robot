*** Settings ***

Library    SeleniumLibrary
Variables    var.py

*** Keywords ***

Convert IDR to Pounds

    #change language
    Open Browser    ${Flip}    chrome
    Sleep    5s
    Click Element    ${toogleidn}    
    Sleep    5s
    Click Element    ${toogleeng}    
    Sleep    5s
    Click Element    ${toogleidn}    
    Sleep    5s
    Click Element    ${toogleeng}    
    Sleep    5s

    #find out cellular providers supported by Flip
    Maximize Browser Window
    Sleep    4s
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Click Element    //a[@href='/produk-digital']
    Sleep    5s
    Page Should Contain Image    ${pic}
    Sleep    5s

    #simulation sending money
    Click Element    ${homepage}
    Sleep    5s
    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)
    Sleep    5s
    Click Element    //a[@href='/flip-globe']
    Sleep    5s
    #cannot make an automate for dropdown mode
    #Click Button    //button[@class='chakra-menu__menu-button css-1l1pwnu' and @id='menu-button-5' and aria-expanded='false' and aria-haspopup='menu' and aria-controls='menu-list-5']
    #Sleep    5s
    #Input Text    @{currency}    GBP
    #Sleep    5s
    Input Text    ${idrnominal}    10000
    Sleep    5s
    Element Should Be Visible    ${myrnominal}
    Sleep    5s
    Element Should Be Visible    ${exchangerate}
    Sleep    5s
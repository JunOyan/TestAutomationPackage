*** Settings ***
Documentation      Keywords for web inputs task
Library            SeleniumLibrary
Resource           ../GlobalVariables.resource

*** Keywords ***
Start Server
    Open Browser    url=${URL}    browser=${BROWSER}
    
Close Server
    Close Browser

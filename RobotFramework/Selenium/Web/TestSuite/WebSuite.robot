*** Settings ***
Library              SeleniumLibrary
Resource              ../PageResources/HomePage.resource
Test Tags            WebSuite
Test Setup           Open Browser
Test Teardown        Close Browser

*** Test Cases ***
Test with Settings
    [Documentation]    This is a Documentation
    [Tags]    dummy    tagging
    Log    Hello, world!

Check Title of Webpage
    Title Should Be                        ${TITLE}
    Wait Until Page Contains Element       title


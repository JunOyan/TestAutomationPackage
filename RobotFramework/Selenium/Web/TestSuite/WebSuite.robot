*** Settings ***
Library              SeleniumLibrary
Resource             ../Resources/WebInputs.resource
Resource             ../Resources/Common.resource
Test Tags            WebSuite
Suite Setup          Start Server
Suite Teardown       Close Server

*** Test Cases ***
Test with Settings
    [Documentation]    This is a Documentation
    [Tags]    dummy    tagging
    Log    Hello, world!

Check Title of Webpage
    Title Should Be                        Title
    Wait Until Page Contains Element       title


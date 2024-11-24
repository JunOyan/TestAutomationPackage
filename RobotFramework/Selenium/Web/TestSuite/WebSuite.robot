*** Settings ***
Library              SeleniumLibrary
Resource             ../Resources/WebInputs.resource
Resource             ../Resources/Common.resource
Test Tags            WebSuite
Suite Setup          Start Server
Suite Teardown       Close Server

*** Test Cases ***
Test with Settings
    [Documentation]    This is a Documentation. Two test runs follow the template with values in new lines
    [Tags]    dummy    tagging
    [Template]    Title Should Be
    Title1    Title1
    Title2    Title3

Check Title of Webpage
    Title Should Be                        Title
    Wait Until Page Contains Element       title


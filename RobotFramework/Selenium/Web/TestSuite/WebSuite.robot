*** Settings ***
Library              SeleniumLibrary
Resource             ../Resources/WebInputs.resource
Resource             ../Resources/Common.resource
Test Tags            WebSuite
Suite Setup          Start Server
Suite Teardown       Close Server

*** Test Cases ***
Dummy - Test with Settings
    [Documentation]    This is a Documentation. Two test runs follow the template with values in new lines
    [Tags]    dummy    tagging
    [Template]    Title Should Be
    Title1    Title1
    Title2    Title3

WebSuite - Web Inputs TC
    [Template]    Assert Web Inputs and Outputs
    1234    abcd    abcd123!    11/12/2024
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
    Practice Test Automation WebSite

WebSuite - Web Inputs TC
    [Documentation]    Web inputs test case
    [Setup]            HomePage - Go to Web Inputs
    [Tags]             WebInputs
    [Template]         Web Inputs - Test Case Template    
    1234    abcdef123    p4$$w0rd    11122024
    1028    thisistext   2947!329    02142012

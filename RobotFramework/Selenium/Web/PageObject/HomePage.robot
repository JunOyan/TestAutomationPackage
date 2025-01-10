*** Settings ***
Library             SeleniumLibrary
Library             ../Custom/CustomLibrary.py
Resource           Locators/HomePage_Locators.robot

*** Keywords ***
HomePage - Go to page link WIP
    [Documentation]    Page locator link must be a variable with the same
    ...                name from the homepage locators resource file
    [Arguments]                      ${page_locator_link}
    ${homepage_vars}                 Get Variables
    #Add validation
    Wait Until Element Is Enabled    ${page_locator_link}
    Click Element                    ${page_locator_link}

HomePage - Go to Web Inputs
    [Documentation]    Traverses to WebInputs link in the homepage
    Wait Until Element Is Enabled    ${WEB_INPUTS_LINK}
    Click Element                    ${WEB_INPUTS_LINK}

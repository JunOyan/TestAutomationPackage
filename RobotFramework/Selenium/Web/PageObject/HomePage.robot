*** Settings ***
Library             SeleniumLibrary
Variables           Locators/HomePage_Locators.robot

*** Keywords ***
Go to page link
    [Arguments]    ${page_locator_link}
    Wait Until Element Is Enabled    ${page_locator_link}
    Click Element                    ${page_locator_link}


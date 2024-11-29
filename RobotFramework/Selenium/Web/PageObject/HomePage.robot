*** Settings ***
Library             SeleniumLibrary
Variables           Locators/HomePage_Locators.robot

*** Keywords ***
Homepage - Go to page link
    [Arguments]    ${page_locator_link}
    ${homepage_vars}                 Get Variables
    #Add validation
    Wait Until Element Is Enabled    ${page_locator_link}
    Click Element                    ${page_locator_link}


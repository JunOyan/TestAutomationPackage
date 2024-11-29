*** Settings ***
Library             SeleniumLibrary
Resource            Locators/WebInputs_Locators.robot

*** Keywords ***
Web Inputs - Input number
    [Arguments]    ${input}
    Wait Until Element Is Enabled     ${INPUT_NUMBER_BOX}
    Input Text                        ${INPUT_NUMBER_BOX}        ${input}

Web Inputs - Input ext
    [Arguments]    ${text}
    Wait Until Element Is Enabled     ${INPUT_TEXT_BOX}
    Input Text                        ${INPUT_TEXT_BOX}          ${text}

Web Inputs - Input password
    [Arguments]    ${text}
    Wait Until Element Is Enabled     ${INPUT_PASSWORD_BOX}
    Input Text                        ${INPUT_PASSWORD_BOX}      ${text}

Web Inputs - Input date
    [Arguments]    ${date}
    Wait Until Element Is Enabled     ${INPUT_DATE_BOX}
    Input Text                        ${INPUT_DATE_BOX}          ${date}

*** Settings ***
Library             SeleniumLibrary
Library             DateTime
Library             XML
Resource            Locators/WebInputs_Locators.robot

*** Keywords ***
Web Inputs POM - Get Output Number
    Wait Until Element Is Visible    ${OUTPUT_NUMBER_BOX}
    ${output}                        Get Text                ${OUTPUT_NUMBER_BOX}
    RETURN    ${output}
Web Inputs POM - Get Output Text
    Wait Until Element Is Visible    ${OUTPUT_TEXT_BOX}
    ${output}                        Get Text                ${OUTPUT_TEXT_BOX}
    RETURN    ${output}

Web Inputs POM - Get Output Password
    Wait Until Element Is Visible    ${OUTPUT_PASSWORD_BOX}
    Wait Until Element Is Enabled    ${OUTPUT_PASSWORD_BOX}
    ${output}                        Get Text                ${OUTPUT_PASSWORD_BOX}
    RETURN    ${output}

Web Inputs POM - Get Output Date
    Wait Until Element Is Visible    ${OUTPUT_DATE_BOX}
    ${date_output}                   Get Text                ${OUTPUT_DATE_BOX}
    ${date_output}                   Convert Date            ${date_output}                date_format=%Y-%m-%d        result_format=%m%d%Y
    RETURN    ${date_output}

Web Inputs POM - Input number
    [Arguments]    ${input}
    Wait Until Element Is Enabled     ${INPUT_NUMBER_BOX}
    Input Text                        ${INPUT_NUMBER_BOX}        ${input}

Web Inputs POM - Input text
    [Arguments]    ${text}
    Wait Until Element Is Enabled     ${INPUT_TEXT_BOX}
    Input Text                        ${INPUT_TEXT_BOX}          ${text}

Web Inputs POM - Input password
    [Arguments]    ${text}
    Wait Until Element Is Enabled     ${INPUT_PASSWORD_BOX}
    Input Text                        ${INPUT_PASSWORD_BOX}      ${text}

Web Inputs POM - Input date
    [Arguments]    ${date}
    Wait Until Element Is Enabled     ${INPUT_DATE_BOX}
    Input Text                        ${INPUT_DATE_BOX}          ${date}

Web Inputs POM - Click Display Inputs
    Wait Until Element Is Enabled     ${DISPLAY_INPUTS_BTN}
    Click Element                     ${DISPLAY_INPUTS_BTN}

Web Inputs POM - Clear Inputs
    Wait Until Element Is Enabled     ${CLEAR_INPUTS_BTN}
    Click Element                     ${CLEAR_INPUTS_BTN}

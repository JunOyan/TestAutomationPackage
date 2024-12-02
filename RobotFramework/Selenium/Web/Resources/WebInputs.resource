*** Settings ***
Documentation   Keywords for web inputs task
Resource        ../PageObject/HomePage.robot
Resource        ../PageObject/WebInputsPage.robot

*** Keywords ***
Web Inputs - Go to page
    HomePage - Go to Web Inputs

Web Inputs - Test Case Template
    [Arguments]    ${number}    ${text}    ${password}    ${date}
    Web Inputs POM - Input number            ${number}
    Web Inputs POM - Input text              ${text}
    Web Inputs POM - Input password          ${password}
    Web Inputs POM - Input date              ${date}
    Web Inputs POM - Click Display Inputs
    Assert Web Inputs and Outputs            ${number}
    ...                                      ${text}
    ...                                      ${password}
    ...                                      ${date}
    Web Inputs POM - Clear Inputs

Assert Web Inputs and Outputs
    [Arguments]    ${number}    ${text}    ${password}    ${date}
    ${output_number}=      Web Inputs POM - Get Output Number
    ${output_text}=        Web Inputs POM - Get Output Text
    ${output_password}=    Web Inputs POM - Get Output Password
    ${output_date}=        Web Inputs POM - Get Output Date
    Should Be Equal        ${output_number}        ${number}
    Should Be Equal        ${output_text}          ${text}
    Should Be Equal        ${output_password}      ${password}
    Should Be Equal        ${output_date}          ${date}

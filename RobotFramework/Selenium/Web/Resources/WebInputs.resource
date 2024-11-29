*** Settings ***
Documentation   Keywords for web inputs task
Resource        ../PageObject/HomePage.robot
Resource        ../PageObject/WebInputs_Page.robot

*** Keywords ***
Assert Web Inputs and Outputs
    [Arguments]    ${number}    ${text}    ${password}    ${date}
    No Operation

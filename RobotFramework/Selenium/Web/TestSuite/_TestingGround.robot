*** Settings ***
Test Tags    TestAutomationSample

*** Variables ***
&{DICTIONARY_KEY_VALUE_PAIRS}    name=John    age=32    city=Houston    status=available
@{ARRAY_VALUES}        apple    banana    pears    cherry
${STRING_VALUE}        cars
${SCALAR_VALUE}        34.4

*** Test Cases ***
Get Dictionary Values
    Log    ${DICTIONARY_KEY_VALUE_PAIRS}
    Log    ${DICTIONARY_KEY_VALUE_PAIRS}[status]

Get Array Values
    Log    ${ARRAY_VALUES}
    Log    ${ARRAY_VALUES}[2]

Get Single Value
    Log    ${STRING_VALUE}
    Log    ${SCALAR_VALUE}
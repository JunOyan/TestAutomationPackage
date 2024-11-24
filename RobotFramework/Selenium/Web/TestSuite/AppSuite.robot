*** Settings ***
Test Tags        TestAutomationSample

*** Variables ***
&{DICTIONARY_KEY_VALUE_PAIRS}    name=John    age=32    city=Houston    status=available
@{ARRAY_VALUES}    apple    banana    cherry     pears
${STRING_TEXT}    I am good
${INTEGER_VALUE}    23

*** Test Cases ***
Log Key-Value Pairs
    Log    ${DICTIONARY_KEY_VALUE_PAIRS}
    Log    &{DICTIONARY_KEY_VALUE_PAIRS}[age]
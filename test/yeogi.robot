*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn
Test Teardown    Sleep    2s

*** Test Cases ***
Open
    ${chrome_options}=    Evaluate    selenium.webdriver.ChromeOptions()
    Call Method    ${chrome_options}    add_argument    --start-maximized
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-extensions
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --window-size\=1920,1080
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Open Browser    url=${url}    browser=chrome    options=${chrome_options}
    
click button
    Click Element    xpath://span[text()="로그인/회원가입"]
    Sleep    2s
    Click Element    xpath://*[text()=" 이메일로 시작하기 "]
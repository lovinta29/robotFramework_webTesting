*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
# Just click element
Login without fill the form
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Click Element    user-name    
    Click Element    password    
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser

# If NULL
Login with correct username but password NULL
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Input Text    //*[@id="user-name"]    standard_user
    Sleep    2     
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser

Login with NULL username but password correct
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Input Password    //*[@id="password"]    secret_sauce
    Sleep    2     
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser

# Both correct
Login with correct username 1 and password
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Input Text    //*[@id="user-name"]    standard_user
    Input Password    //*[@id="password"]    secret_sauce  
    Sleep    2     
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser 
    
Login with correct username 2 and password
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Input Text    //*[@id="user-name"]    locked_out_user
    Input Password    //*[@id="password"]    secret_sauce  
    Sleep    2     
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser 
    
Login with correct username 3 and password
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Input Text    //*[@id="user-name"]    problem_user
    Input Password    //*[@id="password"]    secret_sauce  
    Sleep    2     
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser
    
Login with correct username 4 and password
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Input Text    //*[@id="user-name"]    performance_glitch_user
    Input Password    //*[@id="password"]    secret_sauce  
    Sleep    2     
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser
    
Login with correct username 5 and password
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Input Text    //*[@id="user-name"]    error_user
    Input Password    //*[@id="password"]    secret_sauce  
    Sleep    2     
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser
    
Login with correct username 6 and password
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Input Text    //*[@id="user-name"]    visual_user
    Input Password    //*[@id="password"]    secret_sauce  
    Sleep    2     
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser

# Uncorrect password    
Login with correct username but uncorrect password
    Open Browser      https://www.saucedemo.com/    Chrome
    Set Browser Implicit Wait    2
    Input Text    //*[@id="user-name"]    visual_user
    Input Password    //*[@id="password"]    secret_sauce123  
    Sleep    2     
    Click Button    //*[@id="login-button"]      
    Sleep    2   
    Close Browser
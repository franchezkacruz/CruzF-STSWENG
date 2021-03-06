*** Settings ***
Documentation   A test suite with a single test for valid login.
...             
...             
...             This test follows the example using keywords from the Selenium library
Library    SeleniumLibrary

*** Test Cases *** 
Valid Login 
    #open browser 
    Open Browser    https://www.saucedemo.com/  chrome

    #set window size
    Maximize Browser Window

    #check if in login page
    Page Should Contain Element     login-button

    #input username
    Input Text      user-name   standard_user

    #input password 
    Input Password      password    secret_sauce

    #click log in button
    Click Button    login-button

    #should open in product page
    Element Text Should Be      class:title     PRODUCTS

    #close 
    [Teardown]      Close Browser
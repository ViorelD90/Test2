*** Settings ***
Documentation   This is the second test for interview follow-up assignment
Resource    ../Resources/common.robot
Resource    ../Resources/e-shopApp.robot
Test Setup  Start Web Test
Test Teardown  End Web Test

*** Variables ***
${BROWSER} =  chrome

*** Test Cases ***
User goes to checkout with two most expensive products
    [Documentation]  User navigates to e-shop PcGarage and tries to checkout with two most expensive laptops
    [Tags]  Current
    Search for gaming laptops
    Sort search results by price > decreasing
    Add two most expensive products from result into cart
    Check that user can continue checkout
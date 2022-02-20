*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER_OPTIONS} =  options=add_argument("--incognito");add_argument("--ignore-certificate-errors");add_argument("--disable-popup-blocking")
${URL} =  https://www.emag.ro/

*** Keywords ***
Start Web Test
    Open Browser    about:blank     ${BROWSER}      ${BROWSER_OPTIONS}
    maximize browser window

End Web Test
    Close Browser



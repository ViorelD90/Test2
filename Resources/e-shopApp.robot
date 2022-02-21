*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/SideMenu.robot
Resource  ../Resources/PO/SearchAndFiltering.robot
Resource  ../Resources/PO/Cart.robot

*** Variables ***


*** Keywords ***

Search for gaming laptops
    Go to   ${URL}
    wait until page contains    Ofertele momentului
    Mouse Over  ${sideMenuOption1}
    click link  ${opt1Laptops}

Sort search results by price > decreasing
    wait until page contains    Laptopuri si accesorii
    click element   ${orderBy}
    click link   ${orderByDesc}
    wait until page contains    Pret descrescator
    sleep   2s

Add two most expensive products from result into cart
    wait until element is enabled   ${product1}
    set focus to element    ${product1}
    click button   ${product1}
    wait until page contains    Produsul a fost adaugat in cos
    click element    ${cartPopOutDismiss}
    click button  ${product2}
    wait until page contains    Vezi detalii cos
    click link  Vezi detalii cos

Check that user can continue checkout
    wait until page contains element    ${continueCheckout}





*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Add To Cart First two products
${product1} =  css=div.card-item.card-standard.js-product-data:first-of-type button.btn-primary
${product2} =  css=div.card-item.card-standard.js-product-data:nth-of-type(2) button.btn-primary
${cartPopOutDismiss} =  xpath=//button[@data-dismiss]
${continueCheckout} =  xpath=//a[@href="/cart/checkout"]
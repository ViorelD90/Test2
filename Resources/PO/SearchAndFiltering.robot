*** Settings ***
Library  SeleniumLibrary

*** Variables ***

#Order by Drop-Down & Options
${orderBy} =  xpath=//span[contains(text(),'Cele mai populare')]
${orderByDesc} =  link:Pret descrescator

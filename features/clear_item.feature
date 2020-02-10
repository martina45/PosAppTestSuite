Feature: Use the clear item feature

  Background:

         When I'm logged in with 1234

Scenario: As a valid user I add 1 item to the basket and clear it afterwards

         Then I press "Spielzeug"     
         Then I press "Fischertechnik 533872 - Dynamic M"
         Then I press "cartEntryMinus"
         Then the "CartPayAmount" field should contain "$0.00"
         Then I logout





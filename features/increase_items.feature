Feature: Increase amount of basket items behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I increase the amount of basket items to 4, I validate cart amount and clear the cart    

         Then I press "Hosen"
         Then I add "Hose für Jungen blau" to my basket 1 times
         Then I press "cartEntryPlus" for 3 times
         Then the "CartPayAmount" field should contain "$86.64"
         Then I press "CartClearAll"
         Then I logout
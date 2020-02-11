Feature: Decrease amount of basket items behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I increase the amount of basket items to 4, decrease the amount by 2, I validate cart amount and clear the cart    

         Then I press "Hosen"
         Then I add "Hose für Jungen blau" to my basket 1 time
         Then I press "cartEntryPlus" for 3 times
         Then I press "cartEntryMinus" for 2 times
         Then the "CartPayAmount" field should contain "$43.32"
         Then I press "CartClearAll"
         Then I logout
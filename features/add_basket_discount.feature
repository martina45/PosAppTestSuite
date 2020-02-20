Feature: Use the basket discount feature

  Background:

         When I'm logged in with 1234

Scenario: As a valid user I add 1 item to the basket, I add a 50% basket discount, I verify the basket amount and clear the basket

         Then I press "Hosen"
         Then I add "Hose für Jungen blau" to my basket 1 time
         Then I press "CartDiscountLayout"
         Then I press 5000
         Then I press "dialogBaseSaveButton"
         Then the "CartPayAmount" field should contain "$10.83"
         Then I press "CartClearAll"
         Then I logout





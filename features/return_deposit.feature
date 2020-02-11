Feature: Return deposit to basket behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I return a deposit to the basket, I validate cart amount and clear the cart    

         Then I press "CartMoreOptions"
         Then I press "Pfandrückgabe"
         Then I press 1000
         Then I select field-id "depositDialogProductNameEditText" and enter text "Flaschenpfand"
         Then I press enter button
         Then I press "dialogBaseSaveButton"
         Then the "CartPayAmount" field should contain "-$10.00"
         Then I press "CartClearAll"
         Then I logout
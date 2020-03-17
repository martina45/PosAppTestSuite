Feature: Add deposit to basket behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I add a deposit to the basket, I validate cart amount and clear the cart    

         Then I press "CartMoreOptions"
         Then I press "Pfand hinzufügen"
         Then I press 1000
         Then I select field-id "depositDialogProductNameEditText" and enter text "Flaschenpfand"
         Then I hide keyboard
         Then I press "dialogBaseSaveButton"
         Then the "CartPayAmount" field should contain "$10.00"
         Then I press "CartClearAll"
         Then I logout
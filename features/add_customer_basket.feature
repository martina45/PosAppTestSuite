Feature: Add existing customer to basket behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I add an existing customer to the basket, I validate added customer and clear the cart    

         Then I press "CartMoreOptions"
         Then I press "Kunde hinzufügen"
         Then I press id "ErrorDialogButtonOK" with text "OK"
         Then I wait upto 40 seconds for the "CustomerListActivity" screen to appear
         Then I wait for 2 seconds
         Then I select field-id "customerSearchEditText" and enter text "Herbert Schmidt"
         Then I press id "customerSearchNameTextVIew" with text "Herbert Schmidt"
         Then I press "customerDetailsAddToBasketButton"
         Then the "CartCustomerName" field should contain "Herbert Schmidt"
         Then I press "CartClearAll"
         Then I logout
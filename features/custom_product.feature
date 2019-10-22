Feature: Custom product sale

  Background:

         When I'm logged in with 1234     

  Scenario: As a valid user I add a custom product and use the cash payment option        

         Then I press "CartAddNewItem"
         Then I press 2000
         Then I enter text "Hose" into field with id "CustomProductDialogProductNameEditText"
         Then I press "19%"
         Then I press "dialogBaseSaveButton"
         Then I press "CartGoToPayment"
         Then I press "$20.00"
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout







Feature: Zero Euro sale

  Background:

         When I'm logged in with 1234
         Then I press "Spielzeug" and I add "Eintritt frei" to my basket 1 times and I press "CartGoToPayment"

  Scenario: As a valid user I conduct a sale for zero Euros        

         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout
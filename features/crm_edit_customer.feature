Feature: Edit existing customer name in CRM behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I go to the CRM overview and edit the first name of a customer. I validate the new customer name change in the basket. Then I revert the changes.


         Then I press "LocafoxMenuBtn"
         Then I press "Kundenverwaltung"
         Then I press "ErrorDialogButtonOK"
         Then I change the first name of the selected customer to "Peter" in the CRM
         Then I press "customerDetailsAddToBasketButton"
         Then I validate the new name of the customer "Peter Schmidt" in the basket
         Then I press "LocafoxMenuBtn"
         Then I press "Kundenverwaltung"
         Then I press "ErrorDialogButtonOK"
         Then I change the first name of the selected customer to "Herbert" in the CRM
         Then I press "customerDetailsAddToBasketButton"
         Then I validate the new name of the customer "Herbert Schmidt" in the basket
         Then I logout
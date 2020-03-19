Feature: Add new customer to CRM behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I go to the CRM overview and add a new customer. I validate the new customer entry in the basket.


         Then I press "LocafoxMenuBtn"
         Then I press "Kundenverwaltung"
         Then I press "ErrorDialogButtonOK"
         Then I press "customerSearchAddCustomer"
         Then I enter random first name
         Then I enter random surname
         Then I enter random email address
         Then I hide keyboard
         Then I press "customerCreateSaveDialog" 
         Then I wait for 2 seconds
         Then I press "CartCustomerLayout"
         Then I press "CartCustomerDelete"
         Then I logout
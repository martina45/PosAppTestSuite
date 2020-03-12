Feature: Conduct a special transaction - invoice deposit cash behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I conduct a cash invoice deposit and I validate the transaction in the Bonjournals transaction details


         Then I press "LocafoxMenuBtn"
         Then I press "Einlage/Ausgabe"
         Then I scroll "SpecialTransactionsTypeSpinner" to text "Rechnungsanzahlung" and touch it
         Then I press "DownPaymentSearch"
         Then I enter text "864" into field with id "DownPaymentSearch"
         Then I press "DownPaymentSearchResults"
         Then I hide keyboard
         Then I press 2000
         Then I press "SpecialTransactionsAccept"
         Then I press "$20.00"
         Then I press "DownPaymentCheckoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds        
         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Rechnungsanzahlung"
         Then the "TransactionDetailPrice" field should contain "$20.00"
         Then the "TransactionDetailPaymentType" field should contain "Zahlungsart: Bar"
         Then I logout
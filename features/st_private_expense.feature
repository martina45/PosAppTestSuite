Feature: Conduct a special transaction - private expense behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I conduct a private expense and I validate the transaction in the Bonjournals transaction details


         Then I press "LocafoxMenuBtn"
         Then I press "Einlage/Ausgabe"
         Then I scroll "SpecialTransactionsTypeSpinner" to text "Entnahme" and touch it
         Then I press "SpecialTransactionsNoteEditText"
         Then I enter text "Entnahme" into field with id "SpecialTransactionsNoteEditText"
         Then I hide keyboard
         Then I press 2000
         Then I press "SpecialTransactionsAccept"
         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Entnahme"
         Then the "TransactionDetailBasketNoteText" field should contain "Entnahme"
         Then the "TransactionDetailPrice" field should contain "-$20.00"
         Then I logout
Feature: Conduct a special transaction - cash expense behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I conduct a cash expense. I validate the transaction in the Bonjournals transaction details


         Then I press "LocafoxMenuBtn"
         Then I press "Einlage/Ausgabe"
         Then I scroll "SpecialTransactionsTypeSpinner" to text "Ausgabe" and touch it
         Then I press "SpecialTransactionsNoteEditText"
         Then I enter text "Ausgabe" into field with id "SpecialTransactionsNoteEditText"
         Then I hide keyboard
         Then I press 2000
         Then I press "SpecialTransactionsAccept"
         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Ausgabe"
         Then the "TransactionDetailBasketNoteText" field should contain "Ausgabe"
         Then the "TransactionDetailPrice" field should contain "-$20.00"
         Then I logout
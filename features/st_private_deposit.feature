Feature: Conduct a special transaction - private deposit behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I conduct a private deposit and I validate the transaction in the Bonjournals transaction details


         Then I press "LocafoxMenuBtn"
         Then I press "Einlage/Ausgabe"
         Then I scroll "SpecialTransactionsTypeSpinner" to text "Einlage" and touch it
         Then I press "SpecialTransactionsNoteEditText"
         Then I enter text "Einlage" into field with id "SpecialTransactionsNoteEditText"
         Then I hide keyboard
         Then I press 2000
         Then I press "SpecialTransactionsAccept"
         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Einlage"
         Then the "TransactionDetailBasketNoteText" field should contain "Einlage"
         Then the "TransactionDetailPrice" field should contain "$20.00"
         Then I logout
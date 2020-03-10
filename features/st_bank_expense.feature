Feature: Conduct a special transaction - bank expense behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I conduct a bank expense. I validate the transaction in the Bonjournals transaction details


         Then I press "LocafoxMenuBtn"
         Then I press "Einlage/Ausgabe"
         Then I scroll "SpecialTransactionsTypeSpinner" to text "Kasseneinzahlung" and touch it
         Then I press "SpecialTransactionsNoteEditText"
         Then I enter text "Kasseneinzahlung" into field with id "SpecialTransactionsNoteEditText"
         Then I hide keyboard
         Then I press 2000
         Then I press "SpecialTransactionsAccept"
         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Kasseneinzahlung"
         Then the "TransactionDetailBasketNoteText" field should contain "Kasseneinzahlung"
         Then the "TransactionDetailPrice" field should contain "$20.00"
         Then I logout
Feature: Conduct a special transaction - invoice deposit cash behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I conduct a cash invoice deposit and I validate the transaction in the Bonjournals transaction details


         Then I press "LocafoxMenuBtn"
         Then I press "Einlage/Ausgabe"
         Then I scroll "SpecialTransactionsTypeSpinner" to text "Rechnungsanzahlung" and touch it
         Then I conduct an invoice payment in "Bar"
         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Rechnungsanzahlung"
         Then the "TransactionDetailPrice" field should contain "$20.00"
         Then the "TransactionDetailPaymentType" field should contain "Zahlungsart: Bar"
         Then I logout
Feature: Conduct a special transaction - invoice deposit ec-card behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I conduct a invoice deposit via ec-card and I validate the transaction in the Bonjournals transaction details


         Then I press "LocafoxMenuBtn"
         Then I press "Einlage/Ausgabe"
         Then I scroll "SpecialTransactionsTypeSpinner" to text "Rechnungsanzahlung" and touch it
         Then I conduct a "EC-Karte" invoice payment
         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Rechnungsanzahlung"
         Then the "TransactionDetailPrice" field should contain "$20.00"
         Then the "TransactionDetailPaymentType" field should contain "Zahlungsart: EC-Karte"
         Then I logout
Feature: Add item note to an item behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I add 1 item to the basket, I add an item note, I conduct a cash transaction and I validate the added note in the Bonjournals transaction details


         Then I press "Hosen"
         Then I add "Hose für Jungen blau" to my basket 1 time
         Then I press "cartEntryEdit"
         Then I select field-id "transactionNoteDialogEditText" and enter text "Positionsnotiz"
         Then I press id "dialogBaseSaveButton" with text "OK"
         Then I press "CartGoToPayment"
         Then I press "$21.66"
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Verkauf"
         Then the "TransactionDetailItemNote" field should contain "Positionsnotiz"
         Then I logout
Feature: Cancel a cash payment behavior

  Background:

         When I'm logged in with 1234
         Then I press "Hosen" and I add "Hose für Jungen blau" to my basket 1 time and I press "CartGoToPayment"
         Then I conduct a cash transaction for "$21.66"

  Scenario: As a valid user I go to the Bonjournal and cancel a cash transaction       

         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Verkauf"
         Then I press "TransactionDetailFab"
         Then I press "TransactionDetailFabCancel"
         Then I select field-id "CancelDialogNote" and enter text "Bar-Stornierung"
         Then I press "CancelDialogOkButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then the "SuccessReceiptGiveBack" field should contain "$21.66"
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout

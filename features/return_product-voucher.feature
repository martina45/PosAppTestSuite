Feature: Return product with voucher behavior

  Background:

         When I'm logged in with 1234
         Then I press "Hosen" and I add "Hose für Jungen blau" to my basket 1 time and I press "CartGoToPayment"
         Then I conduct a cash transaction for "$21.66"

  Scenario: As a valid user I conduct a return product transaction -voucher payment- in the Bonjournal        

         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press "Verkauf"
         Then I press "TransactionDetailFab"
         Then I press "TransactionDetailFabReturns"
         Then I press "TransactionDetailItemCheckBox"
         Then the "cartEntryPrice" field should contain "-$21.66"
         Then I press "TransactionDetailCartBottomBackground"
         Then I press "returnCheckoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then the "SuccessReceiptGiveBack" field should contain "$21.66"
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout
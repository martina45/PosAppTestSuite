Feature: Multi-purpose voucher sale

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I add a multi-purpose voucher to the basket, I pay with cash and validate voucher text in the Bonjournals transaction details    

         Then I press "CartAddNewVoucher"
         Then I press 1000
         Then I select field-id "voucherDialogNoteEditText" and enter text "Geburtstag"
         Then I press enter button
         Then I press "dialogBaseSaveButton"
         Then the "CartPayAmount" field should contain "$10.00"
         Then I press "CartGoToPayment"
         Then I press "$10.00"
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I press "LocafoxMenuBtn"
         Then I press "Bonjournal/Retouren"
         Then I press on screen 48 from the left and 460 from the top
         Then the "TransactionDetailItemNote" field should contain "Geburtstag"
         Then I logout
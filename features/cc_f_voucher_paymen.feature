Feature: Split payment behavior credit card + foreign voucher and reverse order

  Background:
         When I'm logged in with 1234
         Then I press "Hosen" and I add "Hose für Jungen blau" to my basket 1 time and I press "CartGoToPayment"

  Scenario: As a valid user I use the credit card + foreign voucher split payment       

         Then I press "Zahlung splitten"
         Then I wait for 2 seconds
         Then I press id "SplitPaymentOptionCaption" with text "Kredit-Karte"
         Then I press 1000
         Then I press id "SplitPaymentOptionCaption" with text "Gutschein"
         Then I press "checkoutCloseButton"
         Then I wait for 2 seconds
         Then I press "Fremder Gutschein"
         Then I press 3000
         Then I press "checkoutCloseButton"
         Then I wait for 2 seconds
         Then I press "SPSuccessNextPayment"
         Then I wait for 2 seconds
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout

  Scenario: As a valid user I use the foreign voucher + credit card split payment  

         Then I press "Zahlung splitten"
         Then I wait for 2 seconds
         Then I press id "SplitPaymentOptionCaption" with text "Gutschein"
         Then I press 1000
         Then I press id "SplitPaymentOptionCaption" with text "Kredit-Karte"
         Then I press "checkoutCloseButton"
         Then I wait for 2 seconds
         Then I press "Fremder Gutschein"
         Then I press 3000
         Then I press "checkoutCloseButton"
         Then I wait for 2 seconds
         Then I press "SPSuccessNextPayment"
         Then I wait for 2 seconds
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout


		 

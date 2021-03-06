Feature: Split payment behavior cash + foreign voucher and reverse order

  Background:
         When I'm logged in with 1234
         Then I press "Hosen" and I add "Hose für Jungen blau" to my basket 1 time and I press "CartGoToPayment"

  Scenario: As a valid user I use the cash + foreign voucher split payment       

         Then I press "Zahlung splitten"
         Then I wait for 2 seconds
         Then I press id "SplitPaymentOptionCaption" with text "Bar"
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
         Then I press "$10.00"
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout

  Scenario: As a valid user I use the foreign voucher + cash split payment  

         Then I press "Zahlung splitten"
         Then I wait for 2 seconds
         Then I press id "SplitPaymentOptionCaption" with text "Gutschein"
         Then I press 1000
         Then I press id "SplitPaymentOptionCaption" with text "Bar"
         Then I press "checkoutCloseButton"
         Then I wait for 2 seconds
         Then I press "Fremder Gutschein"
         Then I press 3000
         Then I press "checkoutCloseButton"
         Then I wait for 2 seconds
         Then I press "SPSuccessNextPayment"
         Then I wait for 2 seconds
         Then I press "$11.66"
         Then I press "checkoutCloseButton"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout


		 

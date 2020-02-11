Feature: Pay by invoice payment behavior

  Background:

         When I'm logged in with 1234
         Then I press "Hosen" and I add "Hose für Jungen blau" to my basket 1 time and I press "CartGoToPayment"

  Scenario: As a valid user I use the Pbi payment option with existing customer       

         Then I press "Rechnung"
         Then I press id "CheckoutPayByInvoiceFromCustomerDb" with text "Aus Kundendatenbank hinzufügen"
         Then I press id "ErrorDialogButtonOK" with text "OK"
         Then I wait upto 40 seconds for the "CustomerListActivity" screen to appear
         Then I wait for 2 seconds
         Then I press id "customerSearchNameTextVIew" with text "Herbert Schmidt"
         Then I press "customerDetailsAddToBasketButton"
         Then I wait upto 40 seconds for the "CheckoutInvoiceCustomerActivity" screen to appear
         Then I wait for 2 seconds
         Then I press "checkoutInvoiceFinishTransaction"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout


  Scenario: As a valid user I use the Pbi payment option with new customer  

         Then I press "Rechnung"
         Then I press id "CheckoutPayByInvoiceRecipient" with text "Rechnungsempfänger hinzufügen"
         Then I select field-id "checkoutInvoiceNameTextInputEditText" and enter text "Martin"
         Then I select field-id "checkoutInvoiceLastNameTextInputEditText" and enter text "Mustermann"
         Then I select field-id "checkoutInvoiceCompanyTextInputEditText" and enter text "Mustermann GmbH"
         Then I select field-id "checkoutInvoiceEmailTextInputEditText" and enter text "mxmmxme1xzu7@yahoo.de"
         Then I select field-id "checkoutInvoiceStreetTextInputEditText" and enter text "Mustermann Weg"
         Then I select field-id "checkoutInvoiceStreetNumberInputEditText" and enter text "77a"
         Then I select field-id "checkoutInvoiceStreetAdditionalInputEditText" and enter text "EG links"
         Then I press enter button
         Then I select field-id "checkoutInvoicePostCodeTextInputEditText" and enter text "11344"
         Then I select field-id "checkoutInvoiceCityNumberEditText" and enter text "Berlin"
         Then I press enter button
         Then I select field-id "checkoutInvoiceNoteTextInputEditText" and enter text "Stammkunde"
         Then I press enter button
         Then I press "checkoutInvoiceFinishTransaction"
         Then I wait upto 40 seconds for the "ActivityConfirmation" screen to appear
         Then I wait for 2 seconds
         Then I press "SuccessNewTransaction"
         Then I wait upto 40 seconds for the "ProductsActivity" screen to appear
         Then I wait for 2 seconds
         Then I logout

  Scenario: As a valid user I use the Pbi payment option with existing customer and cancel transaction

         Then I press "Rechnung"
         Then I press id "CheckoutPayByInvoiceFromCustomerDb" with text "Aus Kundendatenbank hinzufügen"
         Then I press id "ErrorDialogButtonOK" with text "OK"
         Then I wait upto 40 seconds for the "CustomerListActivity" screen to appear
         Then I wait for 2 seconds
         Then I press id "customerSearchNameTextVIew" with text "Herbert Schmidt"
         Then I press "customerDetailsAddToBasketButton"
         Then I wait upto 40 seconds for the "CheckoutInvoiceCustomerActivity" screen to appear
         Then I wait for 2 seconds
         Then I press "checkoutInvoiceCancel"
         Then I press "LocafoxBackBtnText"
         Then I logout

Scenario: As a valid user I use the Pbi payment option with new customer and cancel transaction

         Then I press "Rechnung"
         Then I press id "CheckoutPayByInvoiceRecipient" with text "Rechnungsempfänger hinzufügen"
         Then I select field-id "checkoutInvoiceNameTextInputEditText" and enter text "Martin"
         Then I select field-id "checkoutInvoiceLastNameTextInputEditText" and enter text "Mustermann"
         Then I select field-id "checkoutInvoiceCompanyTextInputEditText" and enter text "Mustermann GmbH"
         Then I select field-id "checkoutInvoiceEmailTextInputEditText" and enter text "mxmmxme1xzu7@yahoo.de"
         Then I select field-id "checkoutInvoiceStreetTextInputEditText" and enter text "Mustermann Weg"
         Then I select field-id "checkoutInvoiceStreetNumberInputEditText" and enter text "77a"
         Then I select field-id "checkoutInvoiceStreetAdditionalInputEditText" and enter text "EG links"
         Then I press enter button
         Then I select field-id "checkoutInvoicePostCodeTextInputEditText" and enter text "11344"
         Then I select field-id "checkoutInvoiceCityNumberEditText" and enter text "Berlin"
         Then I press enter button
         Then I select field-id "checkoutInvoiceNoteTextInputEditText" and enter text "Stammkunde"
         Then I press enter button
         Then I press "checkoutInvoiceCancel"
         Then I press "LocafoxBackBtnText"
         Then I logout





		 

Feature: Add an additional basket behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I add an additional basket with the name Warenkorb 2 and validate the name after creation

         Then I press "addNewBasketButton"
         Then I select field-id "nameDialogEditText" and enter text "Warenkorb 2"
         Then I press "dialogBaseSaveButton"
         Then the "multipleBasketsTitleTextView" field should contain "Warenkorb 2"
         Then I logout
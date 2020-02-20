Feature: Rename basket behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I rename the first basket to Warenkorb 12 and validate the name after creation

         Then I press "multipleBasketsImageButton"
         Then I press "modifyButton"
         Then I press "Warenkorb umbenennen"
         Then I select field-id "renameDialogEditText" and enter text "2"
         Then I press "dialogBaseSaveButton"
         Then I press "basketItem"
         Then the "multipleBasketsTitleTextView" field should contain "Warenkorb 12"
         Then I logout
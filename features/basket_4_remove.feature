Feature: Delete basket behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I delete one basket and validate the remaining basket name after deletion

         Then I press "multipleBasketsImageButton"
         Then I press "modifyButton"
         Then I press "Löschen"
         Then I press "dialogSaveButton"
         Then I press "basketItem"        
         Then the "singleBasketTitleTextView" field should contain "Warenkorb 2"
         Then I logout
Feature: Switch basket behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I switch from the first basket to the second one, I validate the basket name and switch back to the first one

         Then I press "forwardButton"
         Then the "multipleBasketsTitleTextView" field should contain "Warenkorb 2"
         Then I press "backwardButton"
         Then I logout
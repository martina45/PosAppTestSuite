Feature: Add a product to favorites behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I add 1 item to the favorites and I validate the added item in the favorites overview


         Then I press "Hosen"
         Then I long press "Hose für Jungen blau"
         Then I press "productFavoriteImage"
         Then I press "productGoBackDirectoryImageView"
         Then I press "Favoriten"
         Then the "productItemTextView" field should contain "Hose für Jungen blau"
         Then I logout
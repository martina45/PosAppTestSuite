Feature: Remove a product from favorites behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I remove 1 item from the favorites and I validate the removal of the item


         Then I long press "Hose für Jungen blau"
         Then I press "productFavoriteImage"
         Then I should not see "Hose für Jungen blau"
         Then I logout
Feature: Exact product search behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I use the search field and add an exact search term. I add the product result to the basket

         Then I run a search for "Chardonnay"
         Then I wait for 1 second
         Then I press "Chardonnay"
         Then the "cartEntryName" field should contain "Chardonnay"
         Then I logout
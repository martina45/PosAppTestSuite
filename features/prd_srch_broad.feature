Feature: Broad product search behavior

  Background:

         When I'm logged in with 1234

  Scenario: As a valid user I use the search field and add a broad search term. I scroll the page down and add a product to the basket

         Then I run a search for "Hw"
         Then I wait for 1 second
         Then I scroll "productsRecyclerView" to text "Sonos Play:3 schwarz" and touch it
         Then the "cartEntryName" field should contain "Sonos Play:3 schwarz"
         Then I logout
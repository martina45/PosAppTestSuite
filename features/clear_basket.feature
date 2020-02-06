Feature: Use the clear basket feature

  Background:

         When I'm logged in with 1234

Scenario: As a valid user I add 4 items to the basket and clear it afterwards

         Then I press "Spielzeug"     
         Then I press "Eintritt frei"
         Then I press "Der kleine Spanier"
         Then I press "Fischertechnik 533872 - Dynamic M"
         Then I press "Hasbro 540580 Racers"
         Then I press "CartClearAll"
         Then the "CartPayAmount" field should contain "$0.00"
         Then I logout





		 

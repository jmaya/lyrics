Feature: Searching for lyrics
  Scenario: initial user searching for a lyric in the home page
    Given I am in a home page
    When I search for "Nació Mi Poesia"
    And I press the "Search" button
    Then I should see "Naci" within "li"

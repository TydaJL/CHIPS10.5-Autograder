Feature: Display representatives from search

Scenario: Display the representatives in San Diego County from the representatives page
  Given I am on the home page
  Then I follow "Representatives"
  When I fill in "address" with "San Diego"
  And I press "Search"
  Then I should see "Joseph R. Biden"
  And I should see "Gavin Newsom"
  And I should not see "Kathleen C. Hochul"

Scenario: Display a representative's news article page
  Given I am on the home page
  Then I follow "Representatives"
  Then I should see "Search for a Representative"
  When I fill in "address" with "California"
  And I press "Search"
  When I click the "News Articles" link for "Joseph R. Biden"
  Then I should see "Listing News Articles for Joseph R. Biden"
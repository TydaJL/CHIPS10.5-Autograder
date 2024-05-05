Feature: View a Representative's Profile

Background: 
  Given I am on the home page
  Then I follow "Representatives"
  Then I should see "Search for a Representative"

Scenario: Visit Gavin Newsom's Profile
  When I fill in "address" with "94720"
  Then I press "Search"
  Then I should see "Gavin Newsom"
  And I should not see "Greg Abbott"
  When I follow "Gavin Newsom"
  Then I should see "Name:"
  And I should see "Title:"
  And I should see "OCD ID:"
  And I should see "Party:"
  And I should see "Gavin Newsom"
  Then I should see "Governor of California"
  And I should see "Democratic Party"

Scenario: Visit Greg Abbott's Profile
  When I fill in "address" with "Texas"
  Then I press "Search"
  Then I should see "Greg Abbott"
  And I should not see "Gavin Newsom"
  When I follow "Greg Abbott"
  When I follow "Profile"
  Then I should see "Name:"
  And I should see "Title:"
  And I should see "OCD ID:"
  And I should see "Party:"
  And I should see "Greg Abbott"
  Then I should see "Governor of Texas"
  And I should see "Republican Party"
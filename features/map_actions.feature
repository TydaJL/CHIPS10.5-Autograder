Feature: Click on maps to navigate to candidate list
  As a user of CHIPS 10.5
  So that I can click on states and counties to navigate to the candidate list

Scenario: Click on California in state map and see the list of representatives in Alameda County
  Given I am on the home page
  When I click on state "CA"
  Then I click on county "Alameda County"
  Then I should see "Alex Padilla"
  Then I should see "Gavin Newsom"
  Then I should not see "Ted Cruz"
  When I press "Alex Padilla"
  Then I should see "Democratic Party"
  And I should not see "Joseph R. Biden"

Scenario: Click on New York in state map
  Given I am on the home page
  When I click on state "NY"
  Then I click on county "Queens County"
  Then I should see "Kathleen C. Hochul"
  Then I should not see "Gavin Newsom"

Scenario: Click on a state that doesn't exist in the state map
  Given I am on the home page
  When I click on state "XX"
  Then I should not see "Joseph R. Biden"

Scenario: Click on a county that doesn't exist in state map
  Given I am on the home page
  When I click on state "CA"
  When I click on county "No County"
  Then I should not see "Joseph R. Biden"
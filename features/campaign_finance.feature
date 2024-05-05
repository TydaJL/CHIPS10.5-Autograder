Feature: Click on Campaign Finance
  As a user
  So that I click on campaign_finance

Scenario: Search for Campaign Finance
  Given I am on the home page
  When I follow "Campaign Finance"
  Then I should see "Select cycle"
  When I press "Search"
  Then I should see "FIORINA, CARLY"
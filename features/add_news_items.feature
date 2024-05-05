Feature: Add news items based on representative and issue

Background:
  Given I am on the login page
  Then I press "Sign in with Google"
  Then I am on the home page
  Then I follow "Representatives"
  When I fill in "address" with "San Diego"
  And I press "Search"
  Then I should see "Joseph R. Biden"

Scenario: Search top 5 news with representative and issues
  When I click the "News Articles" link for "Joseph R. Biden"
  And I choose the link "Add News Article"
  And I select "Joseph R. Biden" from the "Representative" dropdown
  And I select "Free Speech" from the "Issue" dropdown
  And I press "Search"
  When I select the first article to rate
  And I select "8" from the "Rating" dropdown
  And I press "Save"
  Then I should see "News item was successfully created."
  And I should see "Link:"
  And I should see "Description:"
  And I should see "Rating:"
  And I should see "8"
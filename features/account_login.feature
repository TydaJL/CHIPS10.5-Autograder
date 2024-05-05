Feature: Check account login through third-party authentication

Scenario: Login via GitHub account
  Given I am on the home page
  Then I should see "Login"
  When I press "Login"
  Then I should see "Sign in with GitHub"
  When I press "Sign in with GitHub"
  Then I should see "Profile"
  When I press "Profile"
  Then I should see "Your Profile"
  Then I should see "Name:"
  Then I should see "Authentication Provider:"

Scenario: Login via Google account
  Given I am on the home page
  When I press "Login"
  When I press "Sign in with Google"
  Then I should see "Login"
  Then I should see "Profile"
  When I press "Profile"
  Then I should see "Your Profile"
  Then I should see "Name:"
  Then I should see "Authentication Provider:"

Scenario: Log in and out of the account
  Given I am on the home page
  When I press "Login"
  Then I should see "Sign in with GitHub"
  When I press "Sign in with GitHub"
  Then I should see "Profile"
  When I press "Profile"
  Then I should see "Your Profile"
  Then I should see "Name:"
  Then I should see "Authentication Provider:"
  Then I should see "Logout"
  When I press "Logout"
  Then I should see "You have successfully logged out."
  Then I should see "Login"
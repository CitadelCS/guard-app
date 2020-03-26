Feature: Allows users to logout

As an user
So I can logout of an account
To ensure privacy and security of the account

Background: I am logged in
  Given I create the user "admin" "password"
  Then I logout
  Then I go to the home page

Scenario: I am logged in and I logout
  Given I should see "Please Sign In"
  Given I login with "admin" and "password"
  Then I should see "admin"
  When I press "Logout"
  Then I should see "Please Sign In"
  Then I go to the authorized page
  Then I should not see "You have access to this page"

Scenario: I am logged out and I logout
  Given I go to the home page
  Then I should see "Please Sign In"
  When I press "Logout"
  Then I should see "Please Sign In"
  Then I go to the authorized page
  Then I should not see "You have access to this page"

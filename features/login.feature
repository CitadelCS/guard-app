Feature: Allows users to login

As an user
So I can login with an account
To ensure privacy and security of users

Background: I am on the homepage
  Given I create the user "admin" "1AnnoyingPassword!"

Scenario: I login with admin
<<<<<<< HEAD
  When I login with "admin" and "1AnnoyingPassword!"
  Then I go to the authorized page
  Then I should see "You have access to this page, admin"
=======
  When I login with "admin" and "password"
  Then I should see "Company Spreadsheet"
  Then I go to the home page
  Then I should see "admin"
  
>>>>>>> logout

Scenario: I login to an unknown account
  When I login with "admin" and "1AnnoyingPassword@"
  Then I should see "Invalid Username or Password"
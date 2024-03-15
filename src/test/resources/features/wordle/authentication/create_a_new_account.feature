Feature: Create a new account

  Rule: Should be able to create an account from the login page
    Example: Warrick is a new user and wants to create an account
      Given Warrick does not have an account
      When Warrick opens the Wordle application
      Then Warrick should be presented with the option to create an account

#  Rule: Name, email, password and country are mandatory
#    Example: Warrick is creating an account and provides all the required information
#      Given Warrick is on the create account page
#      When Warrick enters his name, email, password and country
#      Then he should be able to create an account
#
#    Scenario Outline: Name, email, password and country are mandatory
#      Given Warrick is on the create account page
#      When Warrick provides the following credential details:
#        | name   | email   | password   | country   |
#        | <name> | <email> | <password> | <country> |
#      Then he should not be able to create an account
#      Examples:
#        | name    | email        | password       | country | Notes            |
#        |         | $VALID_EMAIL | Val1dPassword! | UK      | missing name     |
#        | Warrick |              | Val1dPassword! | UK      | missing email    |
#        | Warrick | $VALID_EMAIL |                | UK      | missing password |
#        | Warrick | $VALID_EMAIL | Val1dPassword! |         | missing country  |
#
#  Rule: Email and usernames can only be used once
#    Example: Warrick is creating an account and provides an email that is already in use
#      Given Warrick has created an account with the following credential details:
#        | name        | email                  | password       | country |
#        | old-warrick | $PREVIOUSLY_USED_EMAIL | Val1dPassword! | UK      |
#      When Warrick tries to create a new account with the following credential details:
#        | name        | email                  | password       | country |
#        | new-warrick | $PREVIOUSLY_USED_EMAIL | Val1dPassword! | UK      |
#      Then he should be presented with an error message "A player with this email already exists"
#      And he should not be able to create an account
#
#    Example: Warrick is creating an account and provides an username that is already in use
#      Given Warrick has created an account with the following credential details:
#        | name        | email        | password       | country |
#        | old-warrick | $VALID_EMAIL | Val1dPassword! | UK      |
#      When Warrick tries to create a new account with the following credential details:
#        | name        | email        | password       | country |
#        | old-warrick | $VALID_EMAIL | Val1dPassword! | UK      |
#      Then he should be presented with an error message "A player with this username already exists"
#      And he should not be able to create an account

  Rule: Password must be strong


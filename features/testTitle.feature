Feature:
  As a Mobile User, I want to be able to launch the app.

  Background:
    Given the user has opened the app and the app's Home screen is displayed

  Scenario: As a User, I should able to launch the  application
    Then I see button
    Then I can see "title"
    And I can see "showInvisible"

  Scenario: As a User, I should able to Add a contact
    And I can see "addButton"
    Then I click on Add to Button
    Then I Should navigate to Add User Screen
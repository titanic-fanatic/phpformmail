@request
Feature: request
  In order to test variable decoding
  As a anonymous user
  I need to submit forms with GET, POST and arrays

  Scenario: I submit a form with GET (get_single)
    Given I am on "testing/scenarios/request/get_single/form.html"
    When I press "Submit"
    Then I should see "The following information has been submitted:"
    And I should see "testfield: 1"
    And I should see "email: email@example.com"

  Scenario: I submit a form with a GET array (get_array)
    Given I am on "testing/scenarios/request/get_array/form.html"
    When I press "Submit"
    Then I should see "The following information has been submitted:"
    And I should see "testfield: 1, test, 99"
    And I should see "email: email@example.com"

  Scenario: I submit a form with POST (post_single)
    Given I am on "testing/scenarios/request/post_single/form.html"
    When I press "Submit"
    Then I should see "The following information has been submitted:"
    And I should see "testfield: 1"
    And I should see "email: email@example.com"

  Scenario: I submit a form with a POST array (post_array)
    Given I am on "testing/scenarios/request/post_array/form.html"
    When I press "Submit"
    Then I should see "The following information has been submitted:"
    And I should see "testfield: 1, test, 99"
    And I should see "email: email@example.com"

Feature: direct
  In order to test direct access to the script
  As a anonymous users
  I need to receive the correct error messages

  Scenario: Direct to formmail.php
    Given I am on "src/formmail.php"
    Then I should see "Nothing was sent by a form. (No data was sent by POST or GET method.) There is nothing to process here."

  Scenario: Direct to formprocessor.php
    Given I am on "src/formprocessor.php"
    Then I should see "Nothing was sent by a form. (No data was sent by POST or GET method.) There is nothing to process here."

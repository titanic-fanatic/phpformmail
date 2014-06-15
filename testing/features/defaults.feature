@defaults
Feature: defaults
  In order to test default field handling
  As a anonymous users
  I need to test empty forms

  Scenario: I submit an empty form (empty_form)
    Given I am on "testing/scenarios/defaults/empty_form/form.html"
    When I press "Submit"
    Then I should see "You are coming from an unauthorized domain."
    And I should see "There is no recipient to send this mail to."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit an empty form that is configured (empty_form_configured)
    Given I am on "testing/scenarios/defaults/empty_form_configured/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "There is no recipient to send this mail to."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit an empty form with only a recipient (empty_form_configured_recipient)
    Given I am on "testing/scenarios/defaults/empty_form_configured_recipient/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should not see "There is no recipient to send this mail to."
    And I should not see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."
    And I should see "email: email@example.com"

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

@recipient
Feature: recipient
  In order to test recipient logic
  As a anonymous user
  I need to submit forms with various recipients

  Scenario: I submit a form with no recipient (no_recipient)
    Given I am on "testing/scenarios/recipient/no_recipient/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "There is no recipient to send this mail to."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form with a valid recipient field (valid_recipient_field)
    Given I am on "testing/scenarios/recipient/valid_recipient_field/form.html"
    When I press "Submit"
    Then I should see "The following information has been submitted:"
    And I should not see "You are coming from an unauthorized domain."
    And I should not see "There is no recipient to send this mail to."
    And I should not see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."
    And I should see "email: email@example.com"

  Scenario: I submit a form with an invalid recipient field (invalid_recipient_field)
    Given I am on "testing/scenarios/recipient/invalid_recipient_field/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "You are trying to send mail to a domain that is not in the allowed recipients list."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form with a valid recipient array (valid_recipient_array)
    Given I am on "testing/scenarios/recipient/valid_recipient_array/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should not see "There is no recipient to send this mail to."
    And I should not see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."
    And I should see "email: email@example.com"

  Scenario: I submit a form with an invalid recipient array (invalid_recipient_array)
    Given I am on "testing/scenarios/recipient/invalid_recipient_array/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "You are trying to send mail to an address that is not listed in the recipient array."
    And I should see "There is no recipient to send this mail to."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form with a recipient array an field (both_recipient)
    Given I am on "testing/scenarios/recipient/both_recipient/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "You are trying to send mail to an address that is not listed in the recipient array."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form with multiple recipients both good addresses (multiple_both_good)
    Given I am on "testing/scenarios/recipient/multiple_both_good/form.html"
    When I press "Submit"
    Then I should see "The following information has been submitted:"
    And I should not see "You are coming from an unauthorized domain."
    And I should not see "There is no recipient to send this mail to."
    And I should not see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."
    And I should see "email: email@example.com"

  Scenario: I submit a form with multiple recipients both bad addresses (multiple_both_bad)
    Given I am on "testing/scenarios/recipient/multiple_both_bad/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "You are trying to send mail to a domain that is not in the allowed recipients list."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form with multiple recipients one good, one bad address (multiple_one_good_one_bad)
    Given I am on "testing/scenarios/recipient/multiple_one_good_one_bad/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "You are trying to send mail to a domain that is not in the allowed recipients list."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form with an invalid recipient that has two @ (invalid_two_at)
    Given I am on "testing/scenarios/recipient/invalid_two_at/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "You are trying to send mail to a domain that is not in the allowed recipients list."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form with an invalid recipient that has a valid subdomain (invalid_subdomain)
    Given I am on "testing/scenarios/recipient/invalid_subdomain/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "You are trying to send mail to a domain that is not in the allowed recipients list."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form with an invalid recipient that a hanging @ (invalid_hanging_at)
    Given I am on "testing/scenarios/recipient/invalid_hanging_at/form.html"
    When I press "Submit"
    Then I should not see "You are coming from an unauthorized domain."
    And I should see "You are trying to send mail to a domain that is not in the allowed recipients list."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form with a valid recipient field with case difference (valid_recipient_field_case_diff)
    Given I am on "testing/scenarios/recipient/valid_recipient_field_case_diff/form.html"
    When I press "Submit"
    Then I should see "The following information has been submitted:"
    And I should not see "You are coming from an unauthorized domain."
    And I should not see "There is no recipient to send this mail to."
    And I should not see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."
    And I should see "email: email@example.com"

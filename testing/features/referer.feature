@referer
Feature: request
  In order to test referer checking
  As a anonymous user
  I need to submit forms directly and indirectly

  Scenario: I submit a form where the script has no referers (empty_array)
    Given I am on "testing/scenarios/referer/empty_array/form.html"
    When I press "Submit"
    Then I should see "There are no referers defined. All submissions will be denied."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  #Mink is sending over a referer regardless of me not having one
  #commenting out until this can be resolved
  #Scenario: I directly access formmail.php to cause no referer (no_referer)
  #  Given I am on "testing/scenarios/referer/no_referer/formmail.php?recipient=test"
  #  Then I should see "Sorry, but I cannot figure out who sent you here. Your browser is not sending an HTTP_REFERER. This could be caused by a firewall or browser that removes the HTTP_REFERER from each HTTP request you submit."
  #  And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

  Scenario: I submit a form where the referer isn't in the array (wrong_referer)
    Given I am on "testing/scenarios/referer/wrong_referer/form.html"
    When I press "Submit"
    Then I should see "You are trying to send mail to an address that is not listed in the recipient array."
    Then I should see "There is no recipient to send this mail to."
    And I should see "PHPFormMail has experienced errors that must be fixed by the webmaster. Mail will NOT be sent until these issues are resolved. Once these issues are resolved, you will have to resubmit your form to PHPFormMail for the mail to be sent."

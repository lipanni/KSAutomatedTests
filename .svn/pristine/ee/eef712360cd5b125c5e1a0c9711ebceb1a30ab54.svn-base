@pending
Feature: delete activity offerings

  CO 10.1: As a Departmental Administrator, I want to delete one or more Activity Offerings associated
  with a Course Offering so that the specific Activity Offering(s) will no longer be offered for the term.
  CO 10.2: As a Departmental Administrator, I want to receive confirmation that I have elected to delete
  Activity Offerings so that I will not accidentally delete Activity Offerings that I intend to keep.

  Background:
    Given I am logged in as a Schedule Coordinator

  Scenario: Delete multiple AOs
    When I designate a valid term and a Course Offering Code
    And I delete the selected multiple AOs
    Then The AOs are Successfully deleted

  Scenario: Delete an AO in cross-listed course offering
    When I designate a valid term and cross-listed Course Offering Code
    And I delete the AO with Draft state
    Then The AO is Successfully deleted

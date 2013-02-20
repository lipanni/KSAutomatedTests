@wip
Feature: Approve Course Offering Toolbar Button

Background:
Given I am logged in as admin
And term contains COs in Draft state #(May require rollover)

FEATURE: Approve Course Offering toolbar button

Scenario: Approve single Course Offering via Subject Code display toolbar (CANCEL action)
Given I select a course offering containing at least one activity in Draft state
And I click the Approve toolbar button
And I cancel the action
Then the list of courses remains unchanged
And Draft activity offerings remain in Draft state

Scenario: Approve single Course Offering via Subject Code display toolbar
Given I select a course offering containing at least one activity in Draft state
And I click the Approve toolbar button
And I confirm the operation
Then the course offering is in Planned state
And its activity offerings are in Approved state

Scenario: Approve multiple Course Offerings via Subject Code display toolbar (CANCEL action)
Given I select multiple course offerings each containing at least one activity in Draft state
And I click the Approve toolbar button
And I cancel the action
Then the list of courses remains unchanged
And Draft activity offerings remain in Draft state

Scenario: Approve multiple Course Offerings via Subject Code display toolbar
Given I select multiple course offerings each containing at least one activity in Draft state
And I click the Approve toolbar button
And I confirm the operation
Then the selected course offerings are in Planned state
And their activity offerings are in Approved state

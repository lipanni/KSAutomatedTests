@wip
Feature: Manage SOC

As Central Administrator, I want to process delivery logistics requests for all Activity Offerings within a selected Term
so that delivery logistics can be assigned (Mass Scheduling Event)

  Background:
    Given I am logged in as admin

  @draft
  @vp
  Scenario: Lock the SOC
    Given Make sure the SOC exists and not Scheduled for "20132"
    When Change the SOC state to Locked
    Then Verify the SOC has been enabled for Final edit



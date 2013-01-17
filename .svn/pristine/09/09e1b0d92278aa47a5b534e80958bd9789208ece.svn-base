@wip
Feature: populate RDLs in various copying processes and rollover process

  MSR 1.4: As Central Administrator, I want actual delivery logistics from a source AO to be copied to requested
  delivery logistics a new AO when copying an Activity Offering from the current term
  MSR 1.3: As Central Administrator, I want requested delivery logistics from a source AO to be copied to requested
  delivery logistics a new AO when copying an Activity Offering from the current term
  MSR 1.2: As Central Administrator, I want actual delivery logistics on AOs in a source term to be copied to
  requested delivery logistics on AOs in the target term when copying a Course Offering from a previous term
  MSR 1.1: As Central Administrator, I want actual delivery logistics on AOs in a source term to be copied to
  requested delivery logistics on AOs in the target term when performing a simple rollover

  Background:
    Given I am logged in as admin
    Given I am managing a course offering that has Offered AOs

  Scenario: Copy ADL from a source AO to RDL of a new AO from the current term
    When I copy an AO with ADL to a new AO in the same term
    Then The new AO is Successfully created
    And The ADL is Successfully copied to the new AO

  Scenario: Copy RDL from a source AO to RDL of a new AO from the current term
    When I copy an AO with RDL to a new AO in the same term
    Then The new AO with RDL is Successfully created
    And The RDL is Successfully copied to RDL in the new AO


  Scenario: Copy ADLs from source AOs to RDLs of new AOs of different term when copying a Course Offering from a previous term
    When I copy an CO with AOs that have ADLs to a new CO in the different term with RDLs in its AOs
    Then The new CO and AOs are Successfully created
    And The ADLs are Successfully copied to RDLs in the new AOs of the newly created CO

  Scenario: Copy ADLs from source COs to RDLs of newly rolled over COs when performing a simple rollover
    When I roll over an term to a new target term
    Then The COs and AOs in the previous term are Successfully rolled over to the target term
    And The ADLs are Successfully copied as RDLs to the rolled over AOs


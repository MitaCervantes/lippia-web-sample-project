@Smoke
Feature: As a potential client i need to search in google to find a web site

Scenario Outline: The client search by "search"
    Given The client is on google page
    When The client search for word <search>
    Then The client verify that results are shown properly

@Crowdar @Calidad @Software
Examples:
  | search          |
  | Crowdar Academy |
  | Calidad         |
  | Software        |


@NotInGoogle
Scenario: The client search by "search"
  Given The client isn't on google page
  When The client search for word Testing
  Then The client verify that results are shown properly
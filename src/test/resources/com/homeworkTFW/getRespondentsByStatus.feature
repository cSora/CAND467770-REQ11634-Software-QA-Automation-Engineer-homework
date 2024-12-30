Feature: Fetch all the respondents who completed the questionnaire for the given survey id

 

Scenario Outline: Fetch all the respondents with given statuses.
    Given url 'http://localhost:8080/api/surveys/22/members?status=<status>'
    When method GET
    Then status <expectedStatus>
    And match karate.toList(response).size() == <expectedSize>

    Examples:
      | status     | expectedStatus | expectedSize |
      | COMPLETED  | 200            | 13           |
      | REJECTED   | 200            | 6            |
      | FILTERED   | 200            | 3            |

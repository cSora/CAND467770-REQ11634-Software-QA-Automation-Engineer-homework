Feature: Fetch all the surveys that were completed by the given member id

Scenario: Fetch surveys completed by member 100 and verify survey IDs
    Given url 'http://localhost:8080/api/members/100'
    When method GET
    Then status 200
    And match response[*].id contains [22, 25, 67, 70]
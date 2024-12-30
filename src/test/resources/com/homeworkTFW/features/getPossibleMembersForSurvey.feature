Feature: Fetch the list of members who can be invited for the given survey (not participated in that survey yet and active)

Scenario: Possible candidates for survey 22
    Given url 'http://localhost:8080/api/surveys/22/members/not-invited'
    When method GET
    Then status 200
    #already took the survey
    And match response[*].id !contains 100
    #inactive member 
    And match response[*].id !contains 5   
    #active member who didn't took survey
    And match response[*].id contains 101
Feature: Fetch all the surveys that were completed by the given member id

#TODO would be great to implement a custom method to get the completed surveys from api/members/member_id 
#     and check points based on that response 
#     also would be great to avoid response acces by index had troubles with ? syntax

Scenario Outline: Check points for survey <surveyId> of member 100
    Given url 'http://localhost:8080/api/members/100/points'
    When method GET
    Then status 200
     And match response[<index>].survey.id == <surveyId>
    And match response[<index>].point == <point>

  Examples:
    | surveyId | point | index |
    | 22       | 0     |0      |
    | 25       | 5     |1      |      
    | 67       | 35    |2      |
    | 70       | 30    |3      |
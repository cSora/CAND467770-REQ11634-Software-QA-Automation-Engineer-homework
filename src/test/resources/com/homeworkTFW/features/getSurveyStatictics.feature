Feature: Fetch the list of surveys with statistics
            - it should contain the following fields:
            survey id,
            survey name,
            number of completes,
            number of filtered participants,
            number of rejected participants,
            average length of time spent on survey

Scenario Outline: Survey statistics details
Given url 'http://localhost:8080/api/surveys/statistics'
When method GET
Then status 200
# There is 100 surveys, update this to dynamic if needed
* def randomIndex = Math.floor(Math.random() * 100)
And match karate.typeOf(response[randomIndex].<KEY>) == '<TYPE>'

Examples:
    | KEY                  | TYPE      |
    | surveyId             | number   |
    | surveyName           | string   |
    | numberOfCompletes    | number   |
    | numberOfFiltered     | number   |
    | numberOfRejected     | number   |
    | avgLengthOfSurvey    | number   |
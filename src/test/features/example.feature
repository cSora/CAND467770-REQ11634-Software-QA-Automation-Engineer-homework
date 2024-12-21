Feature: API testing with Karate

  Scenario: GET request to fetch user details
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method GET
    Then status 200
    And match response.id == 1
    And match response.name == 'Leanne Graham'
    And match response.email == 'Sincere@april.biz'

  Scenario: POST request to create a new user
    Given url 'https://jsonplaceholder.typicode.com/users'
    And request { "name": "John Doe", "email": "johndoe@example.com" }
    When method POST
    Then status 201
    And match response.name == 'John Doe'
    And match response.email == 'johndoe@example.com'

  Scenario: PUT request to update user details
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    And request { "name": "Updated Name", "email": "updated@example.com" }
    When method PUT
    Then status 200
    And match response.name == 'Updated Name'
    And match response.email == 'updated@example.com'

  Scenario: DELETE request to remove a user
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method DELETE
    Then status 200

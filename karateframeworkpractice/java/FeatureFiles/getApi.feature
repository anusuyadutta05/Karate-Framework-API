Feature: get API Testing

  Scenario: Get User details
    Given url baseUrl+'/public/v2/users'
    And path 5850506
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * print jsonResponse.gender + " " + jsonResponse.name + " " + jsonResponse.id+ " " + jsonResponse.email+ " " + jsonResponse.status
    * def actualGender = jsonResponse.gender
    * def actualName = jsonResponse.name
    * def actualEmail = jsonResponse.email
    * def actualStatus = jsonResponse.status
    * def actualId = jsonResponse.id
    * match actualGender == "female"
    * match actualName == "Deeptimayee Gupta"
    * match actualEmail == "deeptimayee_gupta@mitchell-ferry.test"
    * match actualStatus == "inactive"
    * match actualId == 5850506

  Scenario: Invalid user details - Resource not found
    Given url baseUrl+'/public/v2/users'
    And path 21
    When method GET
    Then status 404
    * print response
    * def jsonResponse = response
    * print jsonResponse.message

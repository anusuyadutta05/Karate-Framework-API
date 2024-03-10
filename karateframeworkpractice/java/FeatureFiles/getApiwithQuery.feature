Feature: Get API with Query Parameters

  Scenario: Get all active users whose gender is female
    * def query = {status:"active",gender:"female"}
    Given url baseUrl+'/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: Get all active users whose gender is female and print the count
    * def query = {status:"active",gender:"female"}
    Given url baseUrl+'/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response
    * def responseObj = response 
    * def userCount = responseObj.length
    * print userCount
    * match userCount == 10

Feature: Auth Bearer Validation

  Scenario: Read Auth Bearer
    * print tokenId
    Given header Authorization = 'Bearer '+tokenId
    And url baseUrl+'/public/v2/users'
    When path 6746202
    When method GET
    Then status 200
    * print response

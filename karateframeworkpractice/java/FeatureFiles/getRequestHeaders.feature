Feature: Pass user request header API

  Scenario: Pass user header request in url_Part1
    Given header Connection = 'keep-alive'
    And header Accept-Encoding = 'gzip, deflate, br'
    And header Cache-Control = 'no-cache'
    When url baseUrl+'/public/v2/users'
    And path 6744003
    When method GET
    Then status 200
    * print response

  Scenario: Pass user header request in url_Part2
    * def request_headers = {Connection : 'keep-alive',Accept-Encoding : 'gzip, deflate, br',Cache-Control :'no-cache'}
    Given headers request_headers
    When url baseUrl+'/public/v2/users'
    And path 6744002
    When method GET
    Then status 200
    * print response

  Scenario: Pass user header request in url_Part3
    * configure headers = {Connection : 'keep-alive',Accept-Encoding : 'gzip, deflate, br',Cache-Control :'no-cache'}
    Given url baseUrl+'/public/v2/users'
    And path 6744004
    When method GET
    Then status 200
    * print response

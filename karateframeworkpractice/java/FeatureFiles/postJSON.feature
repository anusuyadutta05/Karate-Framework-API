Feature: POST JSON as an external file

  Background: 
    * def random_string =
      """
      function(s){
      var text = "";
       var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
       for(var i = 0 ; i<s; i++)
       text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
       return text;
      }

      """
    * def randomString = random_string(12)
    * print   randomString;
    * def requestPayload = read('classpath:/karateframeworkpractice/src/main/resources/payloads/user.json')
    * requestPayload.name = 'TestUser_'+randomString
    * requestPayload.email = randomString+'@gmail.com'
    * print requestPayload.name
    * print requestPayload.email
    * print requestPayload

  Scenario: Create a new user using post api
    Given header Authorization = 'Bearer '+tokenId
    And url baseUrl+'/public/v2/users'
    When request jsonObj
    Then method POST
    And status 201
    * print response
    And match $.name ==  requestPayload.name
    And match $.email ==  requestPayload.email
    And match $.gender ==  'female'
    And match $.status ==  'active'

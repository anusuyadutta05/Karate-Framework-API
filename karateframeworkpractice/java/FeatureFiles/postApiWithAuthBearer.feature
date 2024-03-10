Feature: POST API calls to create a new user

  Background: 
    * def random_string =
      """
      function(s){
      var text = "";
      var pattern = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
      for(var i=0;i<s;i++)
      text += pattern.charAt(Math.floor(Math.random() * pattern.length ()));
      return text;
      
      }
      """
    * def randomString = random_string(20)
    * def jsonObj =
      """
      
          {
              "gender": "female",
              "status": "active"
          }
      

      """
    * jsonObj.name = randomString
    * jsonObj.email = randomString+'@gmail.com'

  Scenario: Create a new user using post api request
    Given header Authorization = 'Bearer '+tokenId
    And url baseUrl+'/public/v2/users'
    When request jsonObj
    Then method POST
    And status 201
    * print response
    And match $.name ==  jsonObj.name
    And match $.email ==  jsonObj.email
    And match $.gender ==  'female'
    And match $.status ==  'active'

Feature: My First Feature Scenarios

  Scenario: Print Hello World
    * print 'Hello World'
    * print 'HI , Welcome to Karate Learning'

  Scenario: Declare variables and print
    * def balance = 100
    * def expense = 50
    * print 'totalAmount->' + (balance-expense)

#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
Feature: Validating Place APIs
  I want to use this template for my feature file

  @AddPlace  @Regression 
  Scenario Outline: Verify if Place is being successfully added using AddPlaceAPI
    Given Add Place Payload with "<name>"  "<language>"  "<address>" 
    When user calls "AddPlaceAPI" with "Post" http request
    Then the API call got sucess with status code 200
    And "status" in response body is "OK"
    And "scope" in response body is "APP"
    And verify place_Id created maps to "<name>" using "getPlaceAPI" 
    
    Examples: 
      | name             | language  | address                    |
      | Frontline house  | French-IN | 29, side layout, cohen 09  |
  #   | Ferien house   | French-IN | 30, side layout, cohen 09  |
  @DeletePlace @Regression 
  Scenario: Verify if Delete Place functionality is working
    Given DeletePlace Payload 
    When user calls "deletePlaceAPI" with "Post" http request
    Then the API call got sucess with status code 200
    And "status" in response body is "OK"
         
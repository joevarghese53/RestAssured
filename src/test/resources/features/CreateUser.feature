Feature: create user

  Background:
    * def body = read("classpath://data//create-user.json")

  Scenario: user is able to create user
    Given url host
    And path "/users"
    And header Content-Type = "application/json"
    And header Authorization = "Bearer 6d6a140f387f2dadfe9e0ae1c212766f5e2a5beb3bcfe146e46dd93cc719f86e"
    And request body
    When method post
    Then status 201
    And print response

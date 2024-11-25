Feature: Update user

  Background:
    * def AllUsersResponse = call read("classpath://features/GetAllUsers.feature")

  Scenario:
    Given url host
    And path "/users/" + AllUsersResponse.response[0].id
    When method get
    Then status 200
    And print response
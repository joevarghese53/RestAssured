Feature: get all users

  Scenario:
    Given url host
    And path "/users"
    When method get
    Then status 200
    And print response
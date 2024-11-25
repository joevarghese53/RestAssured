Feature: Update user

  Background:
    * def AllUsersResponse = call read("classpath://features/GetAllUsers.feature")
    * def body = read("classpath://data/update-user.json")

    Scenario:
      Given url host
      And header Content-Type = "application/json"
      And header Authorization = "Bearer 6d6a140f387f2dadfe9e0ae1c212766f5e2a5beb3bcfe146e46dd93cc719f86e"
      And path "/users/" + AllUsersResponse.response[0].id
      And request body
      When method put
      Then status 200
      And print response
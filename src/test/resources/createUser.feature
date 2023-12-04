Feature: User

  Scenario: I want to create a new user and update this information

    Given I have authentication to todo.ly
    # consumiendo el request
    When I send POST request 'api/user.json' with json and BASIC authentication
    """
    {
       "Email":"boris.1.1@testing890.com",
       "FullName": "Boris Perez",
       "Password": "Password"
    }
    """

    # verificar el response

    Then I expected the response code 200
    And I expected the response body is equal
    """
    {
        "Id": EXCLUDE,
        "Email": "boris.1.1@testing890.com",
        "Password": null,
        "FullName": "Boris Perez",
        "TimeZone": 0,
        "IsProUser": false,
        "DefaultProjectId": EXCLUDE,
        "AddItemMoreExpanded": false,
        "EditDueDateMoreExpanded": false,
        "ListSortType": 0,
        "FirstDayOfWeek": 0,
        "NewTaskDueDate": EXCLUDE,
        "TimeZoneId": "EXCLUDE"
    }

    """


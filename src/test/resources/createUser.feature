Feature: User

  Scenario: I want to create a new user

    Given I have authentication to todo.ly
    # consumiendo el request
    When I send POST request 'api/user.json' with json and BASIC authentication
    """
    {
       "Email":"b1234P@email.com",
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
        "Email": "b1234P@email.com",
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
    And I get the property value 'Id' and save on ID_USER

    When I send GET request 'api/user/ID_USER.json' with json and BASIC authentication

    """

    """
    Then I expected the response code 200

    When I send PUT request 'api/user/ID_USER.json' with json and BASIC authentication

    """
    {
        "FullName": "Boris"
    }

    """
    Then I expected the response code 200

    And I expected the response body is equal
    """
    {
        "Id": EXCLUDE,
        "Email": "b1234P@email.com",
        "Password": null,
        "FullName": "Boris",
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

    When I send DELETE request 'api/user/ID_USER.json' with json and BASIC authentication

    """

    """
    Then I expected the response code 200


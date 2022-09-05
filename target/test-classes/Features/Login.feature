@LoginAll
Feature: login functionality

Background:
Given user should be on login page

Scenario: Valid Login

When user enters valid userid 
And password and click on button
Then user should be navigated to home page
And Close the browser


#Scenario: Invalid Login
#When user enters userid as "admin" and password as "12345"
#And click on loigin button
#Then error message should be displayed
#And Close the browser

@only@Sanity@smoke
Scenario Outline: Parametrized Invalid Login
When user enters userid as "<userid>" and password as "<password>"
And click on loigin button
Then error message should be displayed
And Close the browser
Examples:
| userid | password|
| ad1    | pwd1    |
| ad2    | pwd2    |
| ad3    | pwd3    |
| ad4    | pwd4    |


@only@Sanity@smoke
Scenario: Step Parametrized Invalid Login
When user enters userid as "<userid>" and password as "<password>" and click on login button
| userid | password|
| admin | admin|

Then user should be navigated to home page
And Close the browser

Feature: Manage Categories
  As a blog administrator
  In order to organize articles according to subject or idea
  I want to be able to create and edit categories on my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Admin should be able to go the Categories management page
    Given I am on the admin page
    And I follow "Categories"
    Then I should see "Categories"
    And I should see "Your category slug."
    And I should not see "Welcome back, admin!"


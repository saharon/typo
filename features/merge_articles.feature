Feature: Merge Articles
  As a blog administrator
  In order to reduce repetitive articles
  I want to be able to merge similar articles on my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And I added three articles to the blog
    And I am on the your posts page
    Then I should see "Manage articles"
    And I should see "Have Fun!"
    And I should see "Good Morning"
    And I should see "Lots of fun"

  Scenario: Admin should have Merge Articles option when editing existing article
    Given I am on the admin page
    And I go to the your posts page
    Then I should see "Manage articles"
    And I follow "Have Fun"
    Then I should see "Merge Articles"
    And I should see "Article ID"
    
  Scenario: Admin should not have Merge Articles option for a new article
    Given I am on the admin page
    And I follow "New Article"
    Then I should see "New Article"
    And I should not see "Merge Articles"
    And I should not see "Article ID"

Feature: Create and edit blog categories
  As an administrator
  In order to manage the blog
  I want to create and edit categories
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    Then I should be on the admin page
    And the following categories exist:
      | name   |
      | Music  |
      | Travel |

  Scenario: Create a category
    Given I follow "Categories"
    Then I should see a form for creating a new category
    When I fill in "Name" with "Business"
    And I click "Save"
    Then I should be on the categories admin page
    And I should see "Category was successfully saved"
    And I should see "Business"
    
  Scenario: Adding a new category fails
    Given I follow "Categories"
    Then I should see a form for creating a new category
    When I fill in "Name" with ""
    And I click "Save"
    And I should be on the categories admin page
    And I should see "Category could not be saved"
    
  Scenario: Edit an existing category
    Given I am on the categories admin page
    When I follow the "edit" link for the "Music" category
    Then I should be on the edit category page for Music

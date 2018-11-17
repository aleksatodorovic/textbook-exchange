Feature: User can manually add a book 
  
  Scenario: Add a book 
    Given I am on the Novel Marketplace homepage
    When I follow "Add a Book"
    Then I should be on the Add a Book post page 
    When I fill in "Title" with "Shees' Book" 
    When I fill in "ISBN" with "1234"
    And I press "Add Book"
    Then I should see on the home page "Shees' Book"
    
Feature: User can manually add a book
  Scenario: Add a book
    Given I am on the Novel Marketplace home page
    When I followgit  "Add a Book"
    Then I should be on the Add a Bookpost page
    When I fill in "Title" with "Shee's book"
    When I fill in "ISBN" with "1234567654321"
    And I press "Add Book"
    Then I should be on the Novel Marketplace home page
    And I should see "Shee's book"
    
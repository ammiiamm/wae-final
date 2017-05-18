Feature: User

  A normal user adds an article.

  Scenario: A normal user adds an article.

  A normal user adds an article and see a result

    Given I am a users
    When I want to add an article
    And I am signed in
    When I visit the article page
    Then I should see an article page
    When I click add new article
    Then I should fill in data as HTML into article form
    When I go back to article main page
    Then I should see my article that I've been submitted
    When I want to fill in data as HTML into comment form and submit comment in the same page
    Then I should see my result there
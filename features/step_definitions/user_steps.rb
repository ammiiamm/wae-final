Given(/^I am a users$/) do
  @user = FactoryGirl.create :user
end
When(/^I want to add an article$/) do
  @myarticle = FactoryGirl.build :myarticle
  visit '/users/sign_in'
end
Then(/^I am signed in$/) do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @user.password
  click_button 'Log in'
end
When(/^I visit the article page$/) do
  visit '/articles'
end
Then(/^I should see an article page$/) do
  expect(page).to have_content ("Articles")
end
When(/^I click add new article$/) do
  click_link 'New Article'
end
Then(/^I should fill in data as HTML into article form$/) do
  visit '/articles/new/'
  fill_in 'Title', with: @myarticle.title
  fill_in 'Detail', with: @myarticle.detail
  click_button 'Create Article'
end
When(/^I go back to article main page$/) do
  visit '/articles'
end
Then(/^I should see my article that I've been submitted$/) do

  expect(page).to have_content "I am very big article"
end
When(/^I want to fill in data as HTML into comment form and submit comment in the same page$/) do
  @mycomment = FactoryGirl.build :mycomment
  click_link 'Show'
  fill_in 'Comment detail', with: @mycomment.comment_detail
  click_button 'Create Comment'
end
Then(/^I should see my result there$/) do
  save_and_open_page
  expect(page).to have_content "I am very big comment"
end
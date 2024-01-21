# api_steps.rb
require 'httparty'
require 'json'

Given('a valid user ID') do
  @user_id = 1
end

When('I make a GET request to {string}') do |endpoint|
  @response = HTTParty.get("https://api.example.com#{endpoint}")
end

Then('the response status should be {int}') do |status_code|
  expect(@response.code).to eq(status_code)
end

And('the response should contain {string}') do |expected_content|
  body = JSON.parse(@response.body)
  expect(body['name']).to include(expected_content)
end

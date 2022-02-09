require "application_system_test_case"

class AuthTest < ApplicationSystemTestCase
  test "signs up to the website" do
    visit root_path
    click_on "Create your account"
    fill_in "what's your email?", with: "rodrigo@gmail.com"
    click_on "Create your account"

    assert_selector "p", text: "Please check your email and click link we just sent"
  end
  # test "visiting the index" do
  #   visit auths_url
  #
  #   assert_selector "h1", text: "Auth"
  # end
end

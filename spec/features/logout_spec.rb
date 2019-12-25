require 'rails_helper'

RSpec.describe "home page", type: :view do
  it "allows a user to logout" do
    visit '/login'
    fill_in 'name', with: 'Boris'
    click_button 'login'
    click_button 'logout'
    expect(page.body).to include 'Hi, Guest.'
  end
end
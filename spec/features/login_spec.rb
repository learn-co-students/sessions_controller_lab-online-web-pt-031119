require 'rails_helper'

RSpec.describe "login page", type: :view do
  it "allows a user to login with their name" do
    visit '/login'
    fill_in 'name', with: 'Boris'
    click_button 'login'
    expect(page.body).to include 'Hi, Boris.'
  end
end
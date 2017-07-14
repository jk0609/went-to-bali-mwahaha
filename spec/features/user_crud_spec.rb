require 'rails_helper'

describe "add new user" do
  it "adds a new user" do
    visit '/sign_up'
    fill_in 'Name', :with=>'Jon'
    fill_in 'Email', :with=>'jon@jon.com'
    fill_in 'Password', :with=>'123456'
    fill_in 'Password confirmation', :with=>'123456'
    click_on 'Sign up'
    expect(page).to have_content 'You have signed up successfully!'
  end
  it "gives error when nothing is entered" do
    visit '/sign_up'
    click_on 'Sign up'
    expect(page).to have_content 'errors'
  end
end

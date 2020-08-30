require 'spec_helper'
require 'user'
require 'pg'
require_relative 'web_helpers'

feature 'sign up' do
    scenario 'a user can sign up' do
sign_up
# visit '/'
# fill_in :name, :with => name
# fill_in :username, :with => username
# fill_in :email, :with => email
# fill_in :password, :with => password
# fill_in :password_confirmation, :with => password_confirmation
# click_on 'Submit'
# expect{ sign_up('Kristyna', 'Kristy', 'kristyna@gmail.com', '1234', '1234')}.to change(User, :count).by 1
expect(page).to have_content 'Hello Kristyna! You have signed up as Kristy!'

end
end 
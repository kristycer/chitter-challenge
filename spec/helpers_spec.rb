require 'helpers'

describe Helpers do
feature "User sign up" do
  include Helpers
  let(:user) { user = build(:user) }

  scenario 'with correct details' do
    user = create(:user)
    sign_in(user)
    expect(page).to have_content("Welcome, #{user.email}")
  end
end
end 
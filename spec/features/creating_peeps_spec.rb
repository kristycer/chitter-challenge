feature 'Adding a new peep' do
    scenario 'A user can add a peep to chitter after sign up' do
      visit('/peeps_new')
      fill_in('url', with: 'This is a third peep')
      click_button('Submit')
  
      expect(page).to have_content 'This is a third peep'
    end
  end
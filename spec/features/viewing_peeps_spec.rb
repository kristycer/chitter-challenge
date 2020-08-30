require 'pg'

feature 'Viewing chitter homepage' do
    scenario 'visiting the index page' do
      visit('/')
      expect(page).to have_content "Welcome to Chitter!"
    end
    feature 'viewing peeps' do
     scenario 'A user can see the peeps' do
      #  connection = PG.connect(dbname: 'chitter_test')

      #   connection.exec("INSERT INTO peeps VALUES(1, 'This is my first peep');")
      #   connection.exec("INSERT INTO peeps VALUES(2, 'This is my second peep');")

      Peep.create(url: "This is my first peep")
      Peep.create(url: "This is my second peep")

      visit '/peeps'

       expect(page).to have_content "This is my first peep"
       expect(page).to have_content "This is my second peep"

     end
  end
end 
require_relative '../lib/peep'

 describe Peep do
    describe '.all' do
     it 'returns all peeps' do
      connection = PG.connect(dbname: 'chitter_test')
        connection.exec("INSERT INTO peeps (url) VALUES ('This is my first peep');")
        connection.exec("INSERT INTO peeps (url) VALUES ('This is my second peep');")

        peeps = Peep.all

        expect(peeps).to include "This is my first peep"
        expect(peeps).to include "This is my second peep"
    
         end 
    end 

    describe '.create' do
    it 'creates a new peep' do
        Peep.create(url: "This is my third peep")

        expect(Peep.all.reverse).to include "This is my third peep"
        end 
    end 
end 
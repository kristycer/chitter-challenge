require 'pg'

class Peep
    def self.all

    if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect(dbname: 'chitter_test')
    else
    connection = PG.connect(dbname: 'chitter')
    end 

    result = connection.exec("SELECT * FROM peeps;")
    result.map { |peep| peep['url'] }
         
    end 

    def  self.create(url:)
    if ENV['ENVIRONMENT'] == 'test'
    connection = PG.connect(dbname: 'chitter_test')
    else
    connection = PG.connect(dbname: 'chitter')
        end 
    connection.exec("INSERT INTO peeps (url) VALUES('#{url}')")
    end

end 
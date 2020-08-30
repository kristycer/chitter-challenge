class User 

    attr_reader :name, :username, :email, :password, :password_confirmation

  def initialize(name:, username:, email:, password:, password_confirmation:)
    @name 
    @username 
    @email
    @password
    @password_confirmation 
  end


    def sign_up
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'chitter_test')
            else
            connection = PG.connect(dbname: 'chitter')
            end 
        
            result = connection.exec("SELECT * FROM peeps;")
            result.map { |peep| peep['url'] }
                 
    end 
end 


require 'user'
describe User do
    let(:user) do

User.create(name: 'Kristyna', 
        username: 'Kristy', 
        email: 'kristyna@gmail.com', 
        password: '1234', 
        password_confirmation: '1234')
    end 
end 

# describe '.create' do
#     it 'creates a new peep' do
#         Peep.create(url: "This is my third peep")

#         expect(Peep.all).to include "This is my third peep"
#         end 
#     end 
# end 
require 'sinatra/base'
require './lib/peep'
require './lib/user'

class Chitter < Sinatra::Base
enable:sessions
set :public_folder, Proc.new { File.join(root, 'static') }


  get '/' do
    'Welcome to Chitter!'
    erb :welcome_page
  end

  post'/sign_up' do
    user = User.new(name: params[:name], username: params[:username], email: params[:email], 
    password: params[:password], password_confirmation: params[:password_confirmation])
    redirect '/peeps'
  end 

  run! if app_file == $0

 get '/peeps' do
     p ENV
    @peeps = Peep.all.reverse
    erb :peeps
    end 

  get '/peeps_new' do
    erb :peeps_new
  end

  post '/peeps' do
  Peep.create(url: params[:url], inception: Time.now)
  redirect '/peeps'
  end 


end 

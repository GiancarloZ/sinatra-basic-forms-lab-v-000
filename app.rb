require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    erb :index
  end
  
  get "/new" do 
    erb :create_puppy
  end
  
  post "/puppy" do
    @new_pup = Puppy.new(params[:name], params[:breed], params[:age])
    @age = @new_pup.months_old
    erb :display_puppy
  end
  
end

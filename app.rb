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
    @name = @new_pup.name
    @breed = @new_pup.breed
    @age = @new_pup.age
    
    erb :display_puppy
  end
  
end

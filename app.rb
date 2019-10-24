require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/" do
    @pups = Puppy.all
    erb :index
  end
  
  get "/new" do 
    erb :create_puppy
  end
  
  post "/puppy" do
    @new_pup = Puppy.new(params[:name], params[:breed], params[:age])
    @name = @new_pup.name
    @breed = @new_pup.breed
    @age = @new_pup.months_old
    
    erb :display_puppy
  end
  
end

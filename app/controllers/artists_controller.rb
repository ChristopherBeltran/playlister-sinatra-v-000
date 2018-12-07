class ArtistsController < ApplicationController
  
  #display a list of all artists in library
  get '/artists' do 
    erb :index
  end 
  
  
  #display the artists songs & genres, with links to each
  get '/artists/:slug' do 
    erb :show
  end
  
  


end

class SongsController < ApplicationController
  
  #display a list of all songs in library
  get '/songs' do 
    erb :index
  end 
  
  
  #display the artists & genres, with links to each
  get '/songs/:slug' do 
    erb :show
  end
  
end
class GenresController < ApplicationController
  
  #display a list of all genres in library
  get '/genres' do 
    erb :index
  end 
  
  
  #display the genres songs & artists, with links to each
  get '/genres/:slug' do 
    erb :show
  end
  
  


end
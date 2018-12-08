require 'rack-flash'

class SongsController < ApplicationController
  use Rack::Flash
  
  #display a list of all songs in library
  get '/songs' do 
    @songs = Song.all
    erb :"/songs/index"
  end 
  
  get '/songs/new' do
    @genres = Genre.all
    erb :"/songs/new"
  end 
  
  post '/songs' do 
    @song = Song.create(params[:song])
    @song.artist = Artist.find_or_create_by(params[:artist])
    @song.save
    flash[:message] = "Successfully created song."
  redirect to("/songs/#{@song.slug}")
  end 
  
  
  #display the artists & genres, with links to each
  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :"/songs/show"
  end
  
end
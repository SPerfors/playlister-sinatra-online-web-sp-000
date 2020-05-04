class SongsController < ApplicationController

    get '/songs' do
        erb :'/songs/index'
    end
  
    get '/songs/:slug' do
        @song = Song.find_by_slug(params[:slug])
        @artist = @song.artist
        erb :'/songs/show'
    end

    get '/songs/new' do 
        erb :'/songs/new'
    end

    post '/songs/new' do 
        

end

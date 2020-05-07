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

    post '/songs' do 
        puts params
        @song = Song.create(name: params["Name"], genre_ids: params["genres"])
        @song.artist = Artist.find_or_create_by(name: params["Artist Name"])
        @song.save

        redirect '/songs/#{@song.slug}'
    end

        

end

class SongsController < ApplicationController

    get '/songs' do
        erb :'/songs/index'
    end
  
    get '/songs/new' do 
        erb :'/songs/new'
    end

    get '/songs/:slug' do 
        @song = Song.find_by_slug(params[:slug])
        #binding.pry
        erb :'/songs/show'
    end

    

    post '/songs' do 
        
        puts params
        
        @song = Song.create(params[:song])
        
        @song.artist = Artist.find_or_create_by(name: params[:artist][:name])

        @song.genre_id = params[:genres]
        
        @song.save
        
        redirect "/songs/#{@song.slug}"
    end

        

end

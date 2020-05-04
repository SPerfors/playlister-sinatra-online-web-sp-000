class ArtistsController < ApplicationController

    get '/songs' do 
        erb :"/songs/index"
    end

end

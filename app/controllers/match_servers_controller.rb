class MatchServersController < ApplicationController


    
    def index 
        @result = MatchServer.all 
        render json: @result
    end 

    
end

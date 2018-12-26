class UnitStatsController < ApplicationController


    def index 
        @all = UnitStat.all
        p @all
        json_response(@all)
    end 
end

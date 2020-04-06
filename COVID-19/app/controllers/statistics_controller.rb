class StatisticsController < ApplicationController
    require 'httparty'
    include HTTParty
   base_uri "https://health-api.com/api/v1/covid-19"

    def index
    @cases= HTTParty.get('https://api.covid19api.com/summary')
      end
end




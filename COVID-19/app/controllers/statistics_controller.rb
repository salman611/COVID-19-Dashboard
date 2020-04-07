class StatisticsController < ApplicationController
    require 'httparty'
    include HTTParty
   
    def index
    @cases= HTTParty.get('https://api.covid19api.com/summary')

      end

    # def show
    #   @cases= HTTParty.get('https://api.covid19api.com/summary')
    #   @case= @cases['Countries']
    #  end


    def search
      if params[:search].blank?  
        redirect_to(search_statistic_path, alert: "Please fill a country!") and return  
      else  
        params[:search] = params[:search].downcase 
      end
      search_url = "https://corona.lmao.ninja/countries/"+params[:search]
      @search= HTTParty.get(search_url)
  
    end
   
  end




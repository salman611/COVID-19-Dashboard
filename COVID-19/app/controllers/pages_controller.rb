
class PagesController < ApplicationController
  def home

  end

  def about
    @briefings= Briefing.all
   
  end

  def prevention

  end

end
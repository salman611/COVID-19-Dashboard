
class PagesController < ApplicationController
  def home
  end

  def about
    @question_1= "What is coronavirus disease 2019 (COVID-19)?"
    @answer_1= "Coronavirus disease 2019 (COVID-19) is a respiratory illness
    that can spread from person to person. The virus that causes
    COVID-19 is a novel coronavirus that was first identified during
    an investigation into an outbreak in Wuhan, China."
    @question_2="How does COVID-19 spread?"
    @answer_2= "The virus that causes COVID-19 probably emerged from an
    animal source, but is now spreading from person to person.
    The virus is thought to spread mainly between people who
    are in close contact with one another (within about 6 feet)
    through respiratory droplets produced when an infected
    person coughs or sneezes. It also may be possible that a person
    can get COVID-19 by touching a surface or object that has
    the virus on it and then touching their own mouth, nose, or
    possibly their eyes, but this is not thought to be the main
    way the virus spreads. Learn what is known about the spread
    of newly emerged coronaviruses at https://www.cdc.gov/
    coronavirus/2019-ncov/about/transmission.html."
    @question_3="What are the symptoms of COVID-19?"
    @answer_3= "Patients with COVID-19 have had mild to severe respiratory
    illness with symptoms of"
    @answer_3_1="fever."
    @answer_3_2= "cough."
    @answer_3_3 ="shortness of breath."
    @question_4 = "What are severe complications from this virus?"
    @answer_4= "Some patients have pneumonia in both lungs, multi-organ
    failure and in some cases death."
     @question_5 = "Is there a vaccine?"
    @answer_5="There is currently no vaccine to protect against COVID-19. The
     best way to prevent infection is to take everyday preventive
     actions, like avoiding close contact with people who are sick and
     washing your hands often."
    @question_6= "Is there a treatment?"
    @answer_6= "There is no specific antiviral treatment for COVID-19.
    People with COVID-19 can seek medical care to help
     relieve symptoms."
  end

  def prevention

  end

  def search  
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @results = Store.all.where("lower(name) LIKE :search", search: @parameter)  
    end  
  end

end
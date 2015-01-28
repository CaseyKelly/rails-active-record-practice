class PeopleController < ApplicationController

  def index
    @people = Person.all
    if params[:first_name]
      @people = Person.order(:first_name)
    elsif params[:last_name]
      @people = Person.order(:last_name)
    elsif params[:eye_color]
      @people = Person.order(:eye_color)
    elsif params[:date_of_birth]
      @people = Person.order(:date_of_birth)
    elsif params[:awesome]
      @people = Person.where(awesome: true)
    end
  end

end

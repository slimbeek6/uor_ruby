class HomeController < ApplicationController
  def index
  end

  def dashboard
    @roommates = Roommate.all
    @events = Event.all
    @choress = Chore.all
    @expenses = Epxense.all
  end
end

class EventsController < ApplicationController
  def index
  	@event = Event.all 
  end
def show
	@event = Event.find(params[:id])
  end
  def new
  end

  def create
  end
end

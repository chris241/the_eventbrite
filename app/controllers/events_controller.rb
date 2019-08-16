class EventsController < ApplicationController
  def index
  	@event =Event.all
  end

  def new
  	@event = Event.new
  end

  def create
   @event = current_user.events.build(event_params)

    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def event_params
  	params.require(:event).permit(:start_date, :duration, :title, :description,  :price, :location)
  end
end

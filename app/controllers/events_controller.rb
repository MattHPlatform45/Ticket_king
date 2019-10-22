class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @ticket = Ticket.new
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :number_of_tickets, :ticket_id, :date, :category_id, :description, :user_id)
  end

end

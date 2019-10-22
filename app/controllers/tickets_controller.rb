class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    @ticket.user = current_user
    if @ticket.save
      redirect_to event_ticket_path(@ticket)
    else
      render 'new'
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def ticket_params
    params.require(:ticket).permit(:user_id, :event_id, :price, :number, :on_resell, :sold_originally, :sold_on_market_place)
  end
end

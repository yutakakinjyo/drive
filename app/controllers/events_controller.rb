class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
  end

  def new_mtg
    @event = Mtg.new
    @event.subjects.build
    @community = Community.find(params[:community_id])
  end

  def create
    @mtg = Mtg.new(mtg_params)
    if @mtg.save
      redirect_to event_path(@mtg)
    else
      render action: 'new_mtg'
    end
  end

  private
  

  def mtg_params
    params.require(:mtg).permit(:community_id, subjects_attributes: [:title,:content] )
  end


end

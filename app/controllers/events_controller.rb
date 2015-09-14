# -*- coding: utf-8 -*-
class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
  end

  def new_mtg
    @event = Mtg.new
    @event.subjects.build(title: "タイトル")
    @community = Community.find(params[:community_id])
  end

  def create
    @event = Mtg.new(mtg_params)    
    if @event.save
      redirect_to event_path(@event)
    else
      @community = Community.find(params[:mtg][:community_id])
      render action: 'new_mtg'
    end
  end

  private
  

  def mtg_params
    params.require(:mtg).permit(:community_id, subjects_attributes: [:title,:content] )
  end


end

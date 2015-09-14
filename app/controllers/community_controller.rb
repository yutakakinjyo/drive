class CommunityController < ApplicationController

  def index
  end

  def show
    @community = Community.find(params[:id])
  end

end

class HomeController < ApplicationController

  skip_before_filter :authenticate, :only => [:front]

  def index    
    @communities = Community.all
    @joined_communities = current_member.communities
  end

  def front
  end

end

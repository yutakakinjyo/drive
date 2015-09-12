class HomeController < ApplicationController

  skip_before_filter :authenticate, :only => [:front]

  def index
  end

  def front
  end

end

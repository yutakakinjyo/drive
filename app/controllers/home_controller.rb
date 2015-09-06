class HomeController < ApplicationController

  def index
    @issues = Issue.all
    @new_issue = Issue.new
  end

end

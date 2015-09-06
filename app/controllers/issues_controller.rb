class IssuesController < ApplicationController

  def show
  end

  def new 
    @issue = Issue.new
  end

  def create
    @issue = Issue.new(issue_params)
    if @issue.save
      redirect_to root_path
    else
      render action: 'new'
    end
  end

  def edit
  end

  def destroy
  end

  private

  def issue_params
    params.require(:issue).permit(:title)
  end

end

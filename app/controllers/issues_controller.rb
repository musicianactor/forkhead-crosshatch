class IssuesController < ApplicationController
  def index
    @issues = Issue.all
  end
  
  def show
    @issue = Issue.find(params[:id])
  end
  
  def new
    @issue = Issue.new
  end
  
  def create
    @issue = Issue.new(params[:issue])
    if @issue.save
      flash[:notice] = "Successfully created issue."
      redirect_to @issue
    else
      render :action => 'new'
    end
  end
  
  def edit
    @issue = Issue.find(params[:id])
  end
  
  def update
    @issue = Issue.find(params[:id])
    if @issue.update_attributes(params[:issue])
      flash[:notice] = "Successfully updated issue."
      redirect_to @issue
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    flash[:notice] = "Successfully destroyed issue."
    redirect_to issues_url
  end
end

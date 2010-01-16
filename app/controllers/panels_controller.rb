class PanelsController < ApplicationController
  def index
    @panels = Panel.all
  end
  
  def show
    @panel = Panel.find(params[:id])
  end
  
  def new
    @panel = Panel.new
  end
  
  def create
    @panel = Panel.new(params[:panel])
    if @panel.save
      flash[:notice] = "Successfully created panel."
      redirect_to @panel
    else
      render :action => 'new'
    end
  end
  
  def edit
    @panel = Panel.find(params[:id])
  end
  
  def update
    @panel = Panel.find(params[:id])
    if @panel.update_attributes(params[:panel])
      flash[:notice] = "Successfully updated panel."
      redirect_to @panel
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @panel = Panel.find(params[:id])
    @panel.destroy
    flash[:notice] = "Successfully destroyed panel."
    redirect_to panels_url
  end
end

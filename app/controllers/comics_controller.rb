class ComicsController < ApplicationController
  def index
    @comic = Comic.first
      @issue = @comic.issues.recent.first
  end
  
  def show
    @comic = Comic.find(params[:id])
  end
  
  def new
    @comic = Comic.new
  end
  
  def create
    @comic = Comic.new(params[:comic])
    if @comic.save
      flash[:notice] = "Successfully created comic."
      redirect_to @comic
    else
      render :action => 'new'
    end
  end
  
  def edit
    @comic = Comic.find(params[:id])
  end
  
  def update
    @comic = Comic.find(params[:id])
    if @comic.update_attributes(params[:comic])
      flash[:notice] = "Successfully updated comic."
      redirect_to @comic
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
    flash[:notice] = "Successfully destroyed comic."
    redirect_to comics_url
  end
end

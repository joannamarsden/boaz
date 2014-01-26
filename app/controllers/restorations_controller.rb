class RestorationsController < ApplicationController
  def index
    @restorations = Restoration.all
  end

  def new
    @restoration = Restoration.new
  end

  def create
    @restoration = Restoration.new(restoration_params)
    
    if @restoration.save
        redirect_to @restoration
    else
      render 'new'
    end
  end

  def show
    @restoration = Restoration.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  private
  def restoration_params
    params.require(:restoration).permit(:instrument, :description)
  end
end

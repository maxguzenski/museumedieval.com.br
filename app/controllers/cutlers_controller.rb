class CutlersController < ApplicationController

  def index
    @cutlers = Cutler.find :all, :order => 'position'
  end

  def show
    @cutler = Cutler.find(params[:id])    
  end
end

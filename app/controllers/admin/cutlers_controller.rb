class Admin::CutlersController < ApplicationController
  
  layout "admin"

  def index
    @cutlers = Cutler.find :all
  end

  def new
    @cutler = Cutler.new
  end

  def edit
    @cutler = Cutler.find params[:id]
  end

  def create
    @cutler = Cutler.new(params[:cutler])
    if @cutler.save
      flash[:notice] = 'O cuteleiro foi cadastrado.'
      redirect_to admin_cutlers_url
    else
      render :action => "new"
    end
  end

  def update
    @cutler = Cutler.find(params[:id])

    if @cutler.update_attributes(params[:cutler])
      flash[:notice] = 'O cuteleiro foi atualizado.'
      redirect_to admin_cutlers_url
    else
      render :action => "edit"
    end
  end  
end

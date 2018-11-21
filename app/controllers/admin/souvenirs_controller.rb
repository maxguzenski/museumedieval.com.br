class Admin::SouvenirsController < ApplicationController

  layout "admin"

	def update_order
		params[:souvenirs].each_with_index do |id, position|
      Souvenir.update(id, :position => position+1)
		end
		render :nothing => true
	end

  def index
    @souvenirs = Souvenir.find :all, :order => "position"
  end

  def new
    @souvenir = Souvenir.new
    @souvenir.sizes.build
    @souvenir.photos.build
  end

  def edit
    @souvenir = Souvenir.find params[:id]
    @souvenir.photos.build
  end

  def create
    @souvenir = Souvenir.new(params[:souvenir])
    if @souvenir.save
      flash[:notice] = 'O souvenir foi cadastrado.'
      redirect_to admin_souvenirs_url
    else
      render :action => "new"
    end
  end

  def update
    @souvenir = Souvenir.find(params[:id])

    if @souvenir.update_attributes(params[:souvenir])
      flash[:notice] = 'O souvenir foi atualizado.'
      redirect_to admin_souvenirs_url
    else
      render :action => "edit"
    end
  end

end

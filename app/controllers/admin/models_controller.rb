class Admin::ModelsController < ApplicationController

  layout "admin"
  
	def update_order
		params[:models].each_with_index do |id, position|
      Model.update(id, :position => position+1)
		end
		render :nothing => true
	end


  def index
    @models = Model.find :all, :order => "position"
  end

  def new
    @model = Model.new
  end

  def show
    @model = Model.find params[:id]
  end

  def edit
    @model = Model.find params[:id]
  end

 def create
    @model = Model.new(params[:model])

    if @model.save
      flash[:notice] = 'O modelo foi cadastrado.'
      redirect_to [:admin, @model]
    else
      render :action => "new"
    end
  end

  def update
    @model = Model.find(params[:id])
    @model.sizes.pop unless @model.sizes.last.valid?

    if @model.update_attributes(params[:model])
      flash[:notice] = 'O modelo foi atualizado.'
      redirect_to [:admin, @model]
    else
      render :action => "edit"
    end
  end

  def destroy
    @model = Model.find(params[:id])
    @model.destroy
    redirect_to(admin_models_url)
  end

end

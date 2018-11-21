class ClientsController < ApplicationController

  def new
    @client = Client.new
    @client.user = User.new :email => params[:email]
    @client.addresses << Address.new(:zip_code => params[:zip_code])

    begin
      by_cep = BuscaEndereco.por_cep(@client.addresses.first.zip_code)
      @client.addresses.first.street = "#{by_cep[0]} #{by_cep[1]}"
      @client.addresses.first.neighborhood = by_cep[2]
      @client.addresses.first.country_state = by_cep[3]
      @client.addresses.first.city = by_cep[4]
    rescue      
    end
  end

  def edit
    @client = User.find(session[:user_id]).client
  end

  def create
    @client = Client.new params[:client]

    if @client.save
      session[:user_id] = @client.user.id
      #redirect_to :controller => :cart, :action => :checkout
      redirect_to session[:path]
    else
      render :action => :new
    end
  end

  def update
    @client = Client.find params[:id]
    @client.update_attributes params[:client]
    
    if @client.save
      session[:user_id] = @client.user.id
      redirect_to :controller => :cart, :action => :checkout
    else
      render :action => :new
    end
  end

end

class CartController < ApplicationController

  before_filter :preper_order
  after_filter :save_order

  #
  # Apresenta o pedido
  #
  def show
    redirect_if_invalid
  end

  #
  # Cria ou recupera o pedido da sessao e adiciona um novo item
  #
  def create
    session[:url_path] = params[:url_path]
    
    unless @order
      @order = Order.create
      @order.client = User.find(session[:user_id]).client if session[:user_id]
      session[:order_id] = @order.id
    end

    order_item = @order.order_items.build params[:order_item]
    order_item.value = order_item.size.value * order_item.item_count
    order_item.surname.titleize! unless order_item.surname.nil?
    
    if @order.client
      calc_shipping @order.client.addresses.first.zip_code
    end
    
    redirect_to cart_url
  end

  #
  # Faz o checkout do pedido.
  #
  def checkout
    redirect_if_invalid
    @order.client = User.find(session[:user_id]).client
    calc_shipping @order.client.addresses.first.zip_code
    redirect_to cart_url
  end

  #
  # Remove um item do pedido
  #
  def destroy
    @order.order_items = @order.order_items.reject {|i| i.id.to_s == params[:id] && i.destroy }

    unless @order.order_items.empty? || @order.client.nil?
      calc_shipping @order.client.addresses.first.zip_code
    end

    redirect_to cart_url
  end
  
  
  private
    #
    # Prepara a variavel @order
    #
    def preper_order
      if session[:order_id]
        @order = Order.find(session[:order_id])
      end
    end

    #
    # se nao existir pedido, ou este estiver sem itens, redireciona para a 
    # pagina principal 
    #
    def redirect_if_invalid
      if @order.nil? || @order.order_items.nil? || @order.order_items.empty?
        redirect_to home_url
      end
    end

    # 
    # sempre salva o pedido na base de dados apos cada request
    def save_order
      @order.save if @order
    end

    #
    # Calcula o preço do frete como PAC
    #
    def calc_shipping zip_code=session[:cep]
      @order.shipping = nil
      
      if @order.total_weight == 0.0
        @order.shipping = 0
        return
      end
      
      unless zip_code.nil? || zip_code.empty? || 
        begin
          @order.shipping = BuscaFrete.valor_pac :para => zip_code, :peso => @order.total_weight
          @order.shipping = (@order.shipping - ((@order.shipping * 20) / 100)) if @order.shipping && @order.shipping > 5
        rescue
          Rails.logger.info { "Ocorreu em erro no calculo de frete: #{$!}" }
        ensure
          @order.shipping = 15 if @order.shipping.nil?
        end
      end
    end
  
end

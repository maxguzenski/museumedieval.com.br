module CartHelper

  def options_for(item)
    #Simbologia e histórico: #{yes_no item.history}<br/>
    if item.product.instance_of? Model
      """
        Sobrenome(s): #{item.surname}</br>
        Dimensões: #{format_size item.size}<br/>
        Peso: #{weight_for item.size}<br/>
        Prazo de entrega: #{delivery_for item.product}<br/>
      """
    else
      """
        Quantidade: #{item.item_count}</br>
        Valor unitário: #{currency_for(item.value/item.item_count)}<br/>
        Dimensões: #{format_size item.size}<br/>
        Peso: #{weight_for item.size}<br/>
        Prazo de entrega: #{delivery_for item.product}<br/>
      """
    end
  end

  def back_to_store_link
    link_to "<< voltar para a loja", session[:url_path], :style => "font-size:100%;margin-right:1em"
  end

  def continue_link
    html_params = {:style => "font-size:180%"}
    if session[:user_id].nil?
      link_to_remote "Comprar >>", :url => new_login_url(:path => {:controller => :cart, :action => :checkout}), :html => html_params, :method => :get
    else
      link_to "Comprar >>", {:action => :checkout}, html_params
    end
  end

  def pagseguro_zipcode(code)
    code.delete "-"
  end

  def pagseguro_price(price)
    (price * 100).ceil.to_i
  end

  def pagseguro_weight(weight)
    (weight * 1000).ceil.to_i
  end

  def pagseguro_shipping_type(value)
    return "EN" if value.nil? || value == 0
    return "PR"
  end
end

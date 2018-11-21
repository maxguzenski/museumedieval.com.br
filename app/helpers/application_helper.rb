# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  BRASOES_VIEW = %w(brasoes client_searches)

  def create_menu(label, controller_name, class_name, link = nil)
    if controller_name.include? controller.controller_name
      "<div class='selected #{class_name}_selected'>#{link_to(t(label), :controller => controller_name[0])}</div>"
    elsif link
      "<div class='#{class_name}'>#{link_to(t(label), link)}</div>"
    else
      "<div class='#{class_name}'>#{link_to(t(label), {:controller => controller_name[0]})}</div>"
    end
  end

  def faixa_class
    if controller.controller_name == 'home'
      "faixa-castelo"
    elsif BRASOES_VIEW.include? controller.controller_name
      "faixa-brasoes"
    elsif controller.controller_name == 'cutlers'
      "faixa-cutelaria"
    else
      "faixa-castelo"
    end
  end

  def faixa_img
    if controller.controller_name == 'home'
      "<img src='#{t(:img)}uma_viagem_unica.gif' />"
    elsif BRASOES_VIEW.include? controller.controller_name
      "<img src='#{t(:img)}descubra_origem_familia.gif' />"
    elsif controller.controller_name == 'cutelaria'
      "<img src='#{t(:img)}uma_viagem_unica.gif' />"
    else
      "<img src='#{t(:img)}uma_viagem_unica.gif' />"
    end
  end
  
  def img_url(photo, type = nil)
    type = "_#{type.to_s}" unless type.nil?
    "http://farm#{photo.flickr_farm}.static.flickr.com/#{photo.flickr_server}/#{photo.flickr_key}_#{photo.flickr_secret}#{type}.jpg"
  end

  def yes_no(b=false)
    return t(:yes_t) if b
    return t(:no_t) unless b
  end

  def currency_for(value=0)
    number_to_currency(value)
  end

  def format_size(size)
    return "Sob consulta." unless size
    return "#{size.diameter}cm de diâmetro" if size.diameter
    return "#{t(:'product_info.size_info')} #{number_with_delimiter size.width} x #{number_with_delimiter size.height} cm" if size.width > 0 and size.height > 0
    return "Tamanho único"
  end

  def delivery_for(product)
    return t(:'product_info.seven_days') if product.delivery == 0
    return "#{product.delivery} #{t(:'product_info.days')}." if product.delivery > 0
  end

  def weight_for(product)
    return "#{number_with_precision product.weight, :precision => 2}kg"
  end

end

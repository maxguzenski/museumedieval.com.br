module BrasoesHelper

  def min_value(model)
    currency_for (model.sizes.minimum("value") / ((I18n.locale == :en) ? Size::DOLLAR_PRICE : 1))
  end

end

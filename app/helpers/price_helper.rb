module PriceHelper

  def formatted_price(price)
    price_in_unit = BigDecimal.new(price) / 100
    number_to_currency(price_in_unit, unit: '£')
  end

end

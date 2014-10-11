module PriceHelper

  def formatted_price(price)
    price_in_unit = BigDecimal.new(price) / 100
    number_to_currency(price_in_unit, unit: '£')
  end

  def formatted_donations(price)
    price_in_unit = BigDecimal.new(price) / 10000 * 20
    number_to_currency(price_in_unit, unit: '£')
  end

  def formatted_gifts(price)
    price_in_unit = BigDecimal.new(price) / 10000 * 80
    number_to_currency(price_in_unit, unit: '£')
  end

end

module MakingToolDecorator
  def reference_price_jp
    number_to_currency(reference_price, :locale => 'jp')
  end

  def price_jp
    number_to_currency(price, :locale => 'jp')
  end
end

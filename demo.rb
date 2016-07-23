require_relative 'lib/checkout'

rule1 = -> (products) do
  products.select do |product|
    product.code == 'FR'
  end.each_with_index do |product, index|
    product.tap{ |p|  p.price = 0.0 } if index.odd?
  end
end

rule2 = -> (products) do
  strawberries = products.select{ |product| product.code == 'SR' }

  strawberries.each do |product|
    product.tap{ |p| p.price = 4.50 } if strawberries.count > 2
  end
end

checkout = Checkout.new(rule1, rule2)

checkout.scan('FR')
checkout.scan('SR')
checkout.scan('FR')
checkout.scan('FR')
checkout.scan('CF')

puts checkout.total

checkout.reset_scanner

checkout.scan('FR')
checkout.scan('FR')

puts checkout.total

checkout.reset_scanner

checkout.scan('SR')
checkout.scan('SR')
checkout.scan('FR')
checkout.scan('SR')

puts checkout.total



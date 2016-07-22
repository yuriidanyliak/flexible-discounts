require_relative 'lib/checkout'

checkout = Checkout.new()

checkout.scan('FR')
checkout.scan('SR')
checkout.scan('AJ')
checkout.scan('CF')

puts checkout.total


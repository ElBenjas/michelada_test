require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  test 'valid product ' do
    product = Product.new(name: 'Cerveza', brand: 'Algo',
              description: 'Una cerveza más en el catalogo', price: 10.10)
  assert product.valid?
  end

  test 'invalid without name' do
    product = Product.new(name: '', brand: 'Algo',
              description: 'Una cerveza más en el catalogo', price: 10.10)
    refute user.valid?, 'product is valid without name'
    assert_not_nil user.erros[:name], 'no validation error for name present'
  end
end

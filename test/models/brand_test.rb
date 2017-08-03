require 'test_helper'

class BrandTest < ActiveSupport::TestCase

  def setup
    @brand = brands(:valid)
  end

  test 'valid brand' do
    assert @brand.valid?
  end

  test 'invalid without name' do
    @brand.name = nil
    refute @brand.valid?, 'brand is valid without a name'
    assert_not_nil @brand.errors[:name], 'no validation error for brand present'
  end

end

class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  belongs_to :brand
  validates_numericality_of :price, :less_than_or_equal_to => 100
end

class Product < ApplicationRecord
  validates :name, presence: true
  belongs_to :brand
  accepts_nested_attributes_for :brand
end

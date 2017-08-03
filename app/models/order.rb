class Order < ApplicationRecord
  belongs_to :user
  has_many :lineitems
  has_many :products, through: :lineitems
end

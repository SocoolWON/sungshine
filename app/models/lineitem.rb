class Lineitem < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true
  belongs_to :cart
end

class Lineitem < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true
end

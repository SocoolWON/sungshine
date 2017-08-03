class Product < ApplicationRecord
  belongs_to :admin
  belongs_to :user, optional: true 
  has_many :reviews
  has_many :lineitems
  has_many :orders, through: :lineitems
end

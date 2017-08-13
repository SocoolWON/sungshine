class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :orders
  has_many :products, through: :orders
  has_many :reviews
  has_many :posts
  has_many :comments
  has_many :lineitems

  protected
    def confirmation_required?
      false
    end
end

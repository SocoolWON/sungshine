class Post < ApplicationRecord
  belongs_to :admin, optional: true
  belongs_to :user, optional: true
  has_many :comments
end

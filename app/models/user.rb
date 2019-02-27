class User < ApplicationRecord
  has_many :amusementparks, through: :memberships
  has_many :memberships
end

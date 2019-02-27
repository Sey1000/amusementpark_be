class Amusementpark < ApplicationRecord
  has_many :rollercoasters
  has_many :users, through: :memerships
  has_many :memberships
end

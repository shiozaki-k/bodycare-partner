class Staff < ApplicationRecord
  has_many :event
  has_many :post
  has_many :coment
end

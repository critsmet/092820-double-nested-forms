class Alien < ApplicationRecord
  has_many :colonies
  has_many :planets, through: :colonies 
end

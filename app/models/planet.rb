class Planet < ApplicationRecord
  has_many :colonies
  has_many :aliens, through: :colonies

  accepts_nested_attributes_for :colonies
end

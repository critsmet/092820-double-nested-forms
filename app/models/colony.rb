class Colony < ApplicationRecord
  belongs_to :alien
  belongs_to :planet

  accepts_nested_attributes_for :alien
end

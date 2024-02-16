class Exercise < ApplicationRecord
  belongs_to :training
  has_many :progressions
  accepts_nested_attributes_for :progressions, allow_destroy: true
end

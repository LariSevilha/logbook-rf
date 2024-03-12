class Exercise < ApplicationRecord
  belongs_to :training
  has_many :progressions, dependent: :destroy
  accepts_nested_attributes_for :progressions, allow_destroy: true
  
  enum exercicio: {
    "Leg press" => 0,
    "supino" => 1,
    "extensora" => 2
  }
end

class Training < ApplicationRecord
    has_many :exercises, dependent: :destroy
    accepts_nested_attributes_for :exercises
end

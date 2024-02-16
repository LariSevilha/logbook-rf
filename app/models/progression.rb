class Progression < ApplicationRecord
  belongs_to :exercise
  
  enum level: {
    "facil" => 0,
    "medio" => 1,
    "dificil" => 2
  }
end

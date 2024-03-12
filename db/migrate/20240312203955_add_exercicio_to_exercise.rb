class AddExercicioToExercise < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :exercicio, :integer
  end
end

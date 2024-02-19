class ChangeRepTypeInProgressions < ActiveRecord::Migration[7.0]
  def change
    change_column :progressions, :rep, :string
    change_column :progressions, :set, :string
  end
end

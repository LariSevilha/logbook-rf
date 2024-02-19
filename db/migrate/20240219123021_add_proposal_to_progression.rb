class AddProposalToProgression < ActiveRecord::Migration[7.0]
  def change
    add_column :progressions, :proposal, :string
  end
end

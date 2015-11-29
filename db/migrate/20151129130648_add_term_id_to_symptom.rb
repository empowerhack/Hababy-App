class AddTermIdToSymptom < ActiveRecord::Migration
  def change
    add_column :symptoms, :term_id, :integer
  end
end

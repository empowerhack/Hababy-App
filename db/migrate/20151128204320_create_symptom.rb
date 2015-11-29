class CreateSymptom < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.text :description
      t.string :title
    end
  end
end

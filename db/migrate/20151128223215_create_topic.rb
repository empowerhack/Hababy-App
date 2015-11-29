class CreateTopic < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name
      t.text :description
    end
  end
end

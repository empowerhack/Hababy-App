class CreateAdvice < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.string :title
      t.text :description
      t.integer :country_id
      t.integer :symptom_id
      t.integer :general_topic
    end
  end
end

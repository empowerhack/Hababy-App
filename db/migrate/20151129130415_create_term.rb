class CreateTerm < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.integer :month
      t.boolean :ante_natal
      t.boolean :post_natal
    end
  end
end

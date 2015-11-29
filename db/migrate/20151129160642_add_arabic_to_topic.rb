class AddArabicToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :arabic_name, :text
    add_column :topics, :arabic_description, :string
  end
end

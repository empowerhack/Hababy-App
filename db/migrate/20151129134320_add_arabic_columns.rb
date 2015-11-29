class AddArabicColumns < ActiveRecord::Migration
  def change
    add_column :symptoms, :arabic_description, :text
    add_column :symptoms, :arabic_title, :string

    add_column :advices, :arabic_title, :string
    add_column :advices, :arabic_description, :string
  end
end

class RenameGenalTopicTableOnAdvice < ActiveRecord::Migration
  def change
    rename_column :advices, :general_topic, :topic_id
  end
end

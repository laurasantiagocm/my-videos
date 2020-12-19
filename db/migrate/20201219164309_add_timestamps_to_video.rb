class AddTimestampsToVideo < ActiveRecord::Migration
  def change
    add_column :comments, :created_at, :datetime, null: false
  end
end

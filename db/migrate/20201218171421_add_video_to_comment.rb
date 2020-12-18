class AddVideoToComment < ActiveRecord::Migration
  def change
    add_reference :comments, :video, index: true
    add_foreign_key :comments, :videos
  end
end

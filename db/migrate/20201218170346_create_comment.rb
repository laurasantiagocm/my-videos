class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :comment_body
    end
  end
end

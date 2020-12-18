class CreateVideo < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :youtube_link
      t.references :category, index: true, foreign_key: true
    end
  end
end

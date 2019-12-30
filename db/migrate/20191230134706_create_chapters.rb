class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.references :biography, foreign_key: true
      t.string :title
      t.text :synopsis
      t.text :content
      t.integer :order

      t.timestamps
    end
  end
end

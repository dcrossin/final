class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :content_id
      t.integer :law_id
      t.integer :parent_id
      t.string :titel
      t.string :text
      t.string :content
      t.string :url

      t.timestamps null: false
    end
  end
end

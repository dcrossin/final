class CreateUsergambles < ActiveRecord::Migration
  def change
    create_table :usergambles do |t|
      t.string :part_no
      t.string :description
      t.string :qty
      t.string :price

      t.timestamps null: false
    end
  end
end

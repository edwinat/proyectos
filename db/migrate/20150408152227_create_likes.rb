class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :post_id
      t.integer :like

      t.timestamps
    end
  end
end

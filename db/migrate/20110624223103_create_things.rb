class CreateThings < ActiveRecord::Migration
  def self.up
    create_table :things do |t|
      t.string :name
      t.string :categories
      t.text :description
      t.integer :price
      t.boolean :borrow
      t.integer :user_id

      t.timestamps
    end
    
    add_index :things, :user_id
    add_index :things, :created_at
  end

  def self.down
    drop_table :things
  end
end

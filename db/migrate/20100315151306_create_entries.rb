class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.integer :id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :entries
  end
end

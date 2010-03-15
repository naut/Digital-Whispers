class CreateNewImages < ActiveRecord::Migration
  def self.up
    create_table :new_images do |t|
      t.integer :owner_id
      t.timestamps
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
    end
  end
  
  def self.down
    drop_table :new_images
  end
end

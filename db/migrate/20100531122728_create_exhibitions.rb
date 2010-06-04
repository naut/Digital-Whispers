class CreateExhibitions < ActiveRecord::Migration
  def self.up
    create_table :exhibitions do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :exhibitions
  end
end

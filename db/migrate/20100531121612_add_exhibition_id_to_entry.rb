class AddExhibitionIdToEntry < ActiveRecord::Migration
  def self.up
    add_column :entries, :exhibition_id, :integer
  end

  def self.down
    remove_column :entries, :exhibition_id
  end
end

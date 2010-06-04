class AddSlugToExhibition < ActiveRecord::Migration
  def self.up
    add_column :exhibitions, :slug, :string
  end

  def self.down
    remove_column :exhibitions, :slug
  end
end

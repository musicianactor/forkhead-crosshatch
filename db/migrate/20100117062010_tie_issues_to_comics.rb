class TieIssuesToComics < ActiveRecord::Migration
  def self.up
    add_column :issues, :comic_id, :integer
  end

  def self.down
    remove_column :issues, :comic_id
  end
end

class AddPositionToPanels < ActiveRecord::Migration
  def self.up
    add_column :panels, :position, :integer
  end

  def self.down
    remove_column :panels, :position
  end
end

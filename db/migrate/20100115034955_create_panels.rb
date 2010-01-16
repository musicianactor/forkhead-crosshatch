class CreatePanels < ActiveRecord::Migration
  def self.up
    create_table :panels do |t|
      t.string :caption
      t.integer :issue_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :panels
  end
end

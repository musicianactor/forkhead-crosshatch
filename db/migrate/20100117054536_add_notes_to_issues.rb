class AddNotesToIssues < ActiveRecord::Migration
  def self.up
    add_column :issues, :notes, :text
  end

  def self.down
    remove_column :issues, :notes
  end
end

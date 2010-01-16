class AddStatusToIssues < ActiveRecord::Migration
  def self.up
    add_column :issues, :status, :string
  end

  def self.down
    remove_column :issues, :status
  end
end

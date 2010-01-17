class CreateComics < ActiveRecord::Migration
  def self.up
    create_table :comics do |t|
      t.string :title
      t.text :description
      t.text :about
      t.timestamps
    end
  end
  
  def self.down
    drop_table :comics
  end
end

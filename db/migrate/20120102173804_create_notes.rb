class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.string :title
    end
  end

  def self.down
    drop_table :notes
  end
end

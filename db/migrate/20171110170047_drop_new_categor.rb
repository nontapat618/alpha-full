class DropNewCategor < ActiveRecord::Migration
  def change
    drop_table :new_categories  
  end
end

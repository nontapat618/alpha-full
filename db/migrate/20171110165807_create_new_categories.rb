class CreateNewCategories < ActiveRecord::Migration
  def change
    create_table :new_categories do |t|
      t.string :name
      t.timestamps
    end
  end
end

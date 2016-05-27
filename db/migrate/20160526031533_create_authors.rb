class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :authors
      t.belongs_to :title
      
      t.timestamps null: false
    end
  end
end

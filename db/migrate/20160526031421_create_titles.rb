class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |f|
      t.string :name
      t. belongs_to :title

      t.timestamps null: false
    end
  end
end

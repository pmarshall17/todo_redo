class CreateGenres < ActiveRecord::Migration
  def change
    create_table :genres do |t|
      t.string :genres
			t.belongs_to :title

      t.timestamps null: false
    end
  end
end

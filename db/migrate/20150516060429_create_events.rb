class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.string :category
      t.integer :group_size
      t.integer :min_points

      t.timestamps null: false
    end
  end
end

class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :director_id
      t.integer :actor_id
      t.text :description

      t.timestamps

    end
  end
end

class CreateStarrings < ActiveRecord::Migration[7.0]
  def change
    create_table :starrings do |t|
      t.integer "actor_id"
      t.integer "movie_id"
      t.string "character"
      t.timestamps
    end
  end
end

class CreateStarrings < ActiveRecord::Migration[7.0]
  def change
    create_table :starrings do |t|

      t.timestamps
    end
  end
end

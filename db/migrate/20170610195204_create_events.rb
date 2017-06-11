class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.time :start_time
      t.time :end_time
      t.string :description
      t.integer :day_id

      t.timestamps

    end
  end
end

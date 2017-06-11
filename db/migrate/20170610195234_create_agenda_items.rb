class CreateAgendaItems < ActiveRecord::Migration[5.0]
  def change
    create_table :agenda_items do |t|
      t.time :start_time
      t.time :end_time
      t.string :description
      t.text :status
      t.integer :event_id
      t.integer :leader

      t.timestamps

    end
  end
end

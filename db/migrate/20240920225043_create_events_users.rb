class CreateEventsUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :events_users do |t|
      t.references :attendee, index: true, null: false, foreign_key: { to_table: :users }
      t.references :attended_events, index: true, null: false, foreign_key: { to_table: :events }

      t.timestamps
    end
  end
end

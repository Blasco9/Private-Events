class CreateEventAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :event_attendances do |t|
      t.references :event, foreign_key: true
      t.references :attendee, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end

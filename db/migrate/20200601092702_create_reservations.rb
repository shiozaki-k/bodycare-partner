class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.text :user_id
      t.text :staff_id
      t.timestamps
    end
  end
end

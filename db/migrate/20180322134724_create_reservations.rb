class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :checkin
      t.string :checkout
      t.references :listing, index: true, foreign_key: true
      t.foreign_key :guest_id

      t.timestamps null: false
    end
  end
end

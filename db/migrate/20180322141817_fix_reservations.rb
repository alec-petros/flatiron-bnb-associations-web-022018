class FixReservations < ActiveRecord::Migration
  def change
    remove_column :reviews, :reserveration_id
    add_column :reviews, :reservation_id, :integer
  end
end

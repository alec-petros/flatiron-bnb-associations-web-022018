class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.foreign_key :guest_id
      t.references :reserveration, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.references :city, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end

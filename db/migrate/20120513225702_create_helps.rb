class CreateHelps < ActiveRecord::Migration
  def change
    create_table :helps do |t|
      t.references :camp
      t.string :name
      t.string :email
      t.date :start_date
      t.date :end_date
      t.text :comment
      t.timestamps
    end
  end
end

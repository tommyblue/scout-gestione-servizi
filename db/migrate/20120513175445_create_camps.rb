class CreateCamps < ActiveRecord::Migration
  def change
    create_table :camps do |t|
      t.string :title
      t.string :place
      t.date :start_date
      t.date :end_date
      t.text :comment
      t.timestamps
    end
  end
end

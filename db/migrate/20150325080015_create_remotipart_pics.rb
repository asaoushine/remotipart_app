class CreateRemotipartPics < ActiveRecord::Migration
  def change
    create_table :remotipart_pics do |t|
      t.string :title
      t.text :description
      t.string :topimage

      t.timestamps null: false
    end
  end
end

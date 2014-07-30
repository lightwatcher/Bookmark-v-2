class CreateMarks < ActiveRecord::Migration
  def change
    create_table :marks do |t|
      t.string :title
      t.string :url
      t.string :descri
      t.string :p
      t.integer :userid

      t.timestamps
    end
  end
end

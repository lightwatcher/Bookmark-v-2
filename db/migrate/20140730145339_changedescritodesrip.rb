class Changedescritodesrip < ActiveRecord::Migration
  def change
    remove_column :marks, :descri, :string
    remove_column :marks, :p, :string
    add_column :marks, :descrip, :string
  end
end

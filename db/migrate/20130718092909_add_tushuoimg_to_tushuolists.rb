class AddTushuoimgToTushuolists < ActiveRecord::Migration
  def change
    add_column :tushuolists, :tushuoimg, :string
  end
end

class AddTushuocoverToTushuosort < ActiveRecord::Migration
  def change
    add_column :tushuosorts, :tushuocover, :string
  end
end

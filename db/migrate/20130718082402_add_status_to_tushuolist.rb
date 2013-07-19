class AddStatusToTushuolist < ActiveRecord::Migration
  def change
    add_column :tushuolists, :status, :integer
  end
end

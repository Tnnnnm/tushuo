class CreateTushuosorts < ActiveRecord::Migration
  def change
    create_table :tushuosorts do |t|
      t.string :title
      t.integer :status

      t.timestamps
    end
  end
end

class CreateTushuolists < ActiveRecord::Migration
  def change
    create_table :tushuolists do |t|
      t.string :title

      t.timestamps
    end
  end
end

class CreateFoobars < ActiveRecord::Migration
  def change
    create_table :foobars do |t|
      t.string :title
      t.integer :status
      t.integer :category
      t.text :content

      t.timestamps
    end
  end
end

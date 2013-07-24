class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :tushuolist_id
      t.integer :tushuosort_id

      t.timestamps
    end
  end
end

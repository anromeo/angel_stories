class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :angel

      t.timestamps
    end
  end
end

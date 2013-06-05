class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :ip
      t.integer :story_id

      t.timestamps
    end
  end
end

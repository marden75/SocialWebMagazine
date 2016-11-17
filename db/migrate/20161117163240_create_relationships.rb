class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :friend_id, index: true

      t.timestamps null: false
    end
  end
end

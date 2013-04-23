class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.references :user
      t.string :name
      t.string :category

      t.timestamps
    end
    add_index :networks, :user_id
  end
end

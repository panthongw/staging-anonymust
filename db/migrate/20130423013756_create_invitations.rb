class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :post_id
      t.integer :sender_id
      t.string :recipient_email
      t.string :token
      t.boolean :accepted

      t.timestamps
    end
  end
end

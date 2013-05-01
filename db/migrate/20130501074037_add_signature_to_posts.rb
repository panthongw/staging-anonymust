class AddSignatureToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :signature, :string
  end
end

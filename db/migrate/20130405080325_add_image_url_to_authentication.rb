class AddImageUrlToAuthentication < ActiveRecord::Migration
  def change
    add_column :authentications, :image_url, :string
  end
end

class AddDetailsToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :local, :string
    add_column :posts, :level_danger, :string
    add_column :posts, :image, :string
  end
end

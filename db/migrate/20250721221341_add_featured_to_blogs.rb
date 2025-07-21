class AddFeaturedToBlogs < ActiveRecord::Migration[8.0]
  def change
    add_column :blogs, :featured, :boolean, default: false
  end
end

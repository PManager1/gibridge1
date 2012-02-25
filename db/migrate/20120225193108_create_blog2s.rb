class CreateBlog2s < ActiveRecord::Migration
  def change
    create_table :blog2s do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

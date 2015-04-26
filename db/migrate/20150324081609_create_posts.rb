class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string      :image
      t.string      :title
      t.string      :tagline
      t.string      :url
      t.integer     :sort_order
      t.datetime    :scheduled_at

      t.timestamps null: false
    end

    add_index :posts, [:scheduled_at, :sort_order]
  end
end

class CreateGuitars < ActiveRecord::Migration[6.0]
  def change
    create_table :guitars do |t|
      t.string :title
      t.string :link
      t.string :author
      t.string :last_post
      t.string :replies
      t.string :views

      t.timestamps
    end
  end
end

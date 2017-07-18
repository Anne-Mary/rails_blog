class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.date :date
      t.belongs_to :user, index: true
    end
  end
end

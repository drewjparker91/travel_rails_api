class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :body
      t.string :city
      t.string :country
      t.string :user_name
      t.integer :rating

      t.timestamps
    end
  end
end

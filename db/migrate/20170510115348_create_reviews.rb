class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.string :restaurant

      t.timestamps
    end
  end
end

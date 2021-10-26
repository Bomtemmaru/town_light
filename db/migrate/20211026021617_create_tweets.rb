class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :place,     null: false
      t.string :text
      t.text :image,       null: false
      t.integer :genre_id, null: false
      t.integer :with_id,  null: false
      t.integer :how_id,   null: false
      t.text :way
      t.timestamps
    end
  end
end

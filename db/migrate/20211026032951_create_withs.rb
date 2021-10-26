class CreateWiths < ActiveRecord::Migration[6.0]
  def change
    create_table :withs do |t|

      t.timestamps
    end
  end
end

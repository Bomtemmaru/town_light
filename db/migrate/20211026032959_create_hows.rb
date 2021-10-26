class CreateHows < ActiveRecord::Migration[6.0]
  def change
    create_table :hows do |t|

      t.timestamps
    end
  end
end

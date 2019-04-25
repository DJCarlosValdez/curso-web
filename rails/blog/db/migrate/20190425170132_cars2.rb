class Cars2 < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :car
      t.text :body

      t.timestamps
    end
  end
end

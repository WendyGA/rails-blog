class CreateArticicles < ActiveRecord::Migration[6.1]
  def change
    create_table :articicles do |t|
      t.string :tile
      t.text :body

      t.timestamps
    end
  end
end

class CreateHomees < ActiveRecord::Migration[7.0]
  def change
    create_table :homees do |t|
      t.string :name
      t.string :age
      t.string :add

      t.timestamps
    end
  end
end

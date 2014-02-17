class CreateTuts < ActiveRecord::Migration
  def change
    create_table :tuts do |t|
      t.text :title
      t.text :tut_desc

      t.timestamps
    end
  end
end

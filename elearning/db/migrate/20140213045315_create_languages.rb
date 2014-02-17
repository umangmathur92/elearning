class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :lang_name
      t.text :lang_detail

      t.timestamps
    end
  end
end

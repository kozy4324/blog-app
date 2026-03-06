class CreateAllcolumns < ActiveRecord::Migration[8.1]
  def change
    create_table :allcolumns do |t|
      t.binary :cbinary
      t.boolean :cboolean
      t.date :cdate
      t.datetime :cdatetime
      t.decimal :cdecimal
      t.float :cfloat
      t.integer :cinteger
      t.json :cjson
      t.string :cstring
      t.text :ctext
      t.time :ctime
      t.timestamp :ctimestamp

      t.timestamps
    end
  end
end

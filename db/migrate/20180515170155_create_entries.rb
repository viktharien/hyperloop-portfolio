class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.text :content
      t.references :declaration, foreign_key: true

      t.timestamps
    end
  end
end

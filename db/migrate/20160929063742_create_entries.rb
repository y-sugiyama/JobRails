class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.integer :tel
      t.string :address
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end

class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.integer :categori_id

      t.timestamps
    end
     add_column:jobs, :company, :string
    add_column :jobs, :salary, :integer
    add_column :jobs, :area, :string
  end
end

class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :members
      t.integer :targets

      t.timestamps null: false
    end
  end
end

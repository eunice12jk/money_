class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :first_name
      t.string :last_name
      t.integer :ssdc_no

      t.timestamps null: false
    end
  end
end

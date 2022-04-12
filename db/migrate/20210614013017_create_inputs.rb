class CreateInputs < ActiveRecord::Migration[6.0]
  def change
    create_table :inputs do |t|
      t.string :user_name, null:false
      t.string :store, null:false
      t.string :staff, null:false
      t.string :new_name, null:false
      t.timestamps
    end
  end
end

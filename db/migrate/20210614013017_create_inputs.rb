class CreateInputs < ActiveRecord::Migration[6.0]
  def change
    create_table :inputs do |t|
      t.text :c_name, null:false
      t.text :i_name, null:false
      t.timestamps
    end
  end
end

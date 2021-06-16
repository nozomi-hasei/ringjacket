class CreateInputs < ActiveRecord::Migration[6.0]
  def change
    create_table :inputs do |t|
      t.text :code, null:false
      t.timestamps
    end
  end
end

class CreateHardwares < ActiveRecord::Migration[7.0]
  def change
    create_table :hardwares do |t|
      t.string :part
      t.string :function

      t.timestamps
    end
  end
end

class CreateBillboards < ActiveRecord::Migration[5.1]
  def change
    create_table :billboards do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end

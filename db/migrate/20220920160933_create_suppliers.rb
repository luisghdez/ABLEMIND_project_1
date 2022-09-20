class CreateSuppliers < ActiveRecord::Migration[6.1]
  def change
    create_table :suppliers do |t|
      t.string :company
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

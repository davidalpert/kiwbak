class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cell_phone
      t.string :home_phone
      t.string :heard_how
      t.integer :afac_boxes
      t.integer :self_boxes
      t.boolean :fulfilled
      t.boolean :has_paid
      t.text :comments

      t.timestamps
    end
  end
end

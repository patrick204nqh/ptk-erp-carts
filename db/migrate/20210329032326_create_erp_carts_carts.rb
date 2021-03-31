class CreateErpCartsCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :erp_carts_carts do |t|

      t.timestamps
    end
  end
end

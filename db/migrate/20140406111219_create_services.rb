class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :lawyer_code
      t.string :service_code
      t.string :service_name
      t.integer :charges

      t.timestamps
    end
  end
end

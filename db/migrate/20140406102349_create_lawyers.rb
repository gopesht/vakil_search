class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.string :lawyer_code
      t.string :lawyer_name
      t.integer :years_of_experience
      t.string :location
      t.float :average_rating
      t.timestamps
    end
  end
end

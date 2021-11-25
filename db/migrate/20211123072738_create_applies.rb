class CreateApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :applies do |t|
      t.string :name
      t.integer :contact
      t.string :experience
      t.integer :expectedSalary

      t.timestamps
    end
  end
end

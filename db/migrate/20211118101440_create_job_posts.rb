class CreateJobPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :job_posts do |t|
      t.string :description
      t.integer :contact
      t.integer :salary
      t.integer :contractor_id

      t.timestamps
    end
  end
end

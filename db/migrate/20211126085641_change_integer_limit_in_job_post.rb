class ChangeIntegerLimitInJobPost < ActiveRecord::Migration[5.2]
  def change
    change_column :job_posts, :contact, :integer, limit: 8
  end
end

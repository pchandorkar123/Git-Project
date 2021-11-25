class AddtitiletoJobPost < ActiveRecord::Migration[5.2]
  def change
     add_column :job_posts, :title, :string
  end
end

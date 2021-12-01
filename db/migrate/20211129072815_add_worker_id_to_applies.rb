class AddWorkerIdToApplies < ActiveRecord::Migration[5.2]
  def change
    add_column :applies, :worker_id, :integer
  end
end

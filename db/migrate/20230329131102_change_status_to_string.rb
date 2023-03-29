class ChangeStatusToString < ActiveRecord::Migration[7.0]
  def change
    change_column :projects, :status, :string
    change_column :project_status_histories, :status, :string
  end
end

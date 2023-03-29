class ChangeStatusToString < ActiveRecord::Migration[7.0]
  def change
    change_column :projects, :status, :string
  end
end

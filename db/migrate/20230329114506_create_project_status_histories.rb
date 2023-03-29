class CreateProjectStatusHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :project_status_histories do |t|
      t.integer :status
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end

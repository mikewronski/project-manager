class Project < ApplicationRecord
  has_many :comments
  has_many :project_status_histories, -> { order(created_at: :desc) }

  STATUSES = %w[Draft Pending Published Deleted].freeze
end

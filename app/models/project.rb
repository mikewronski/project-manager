class Project < ApplicationRecord
  has_many :comments, -> { order(created_at: :desc) }, dependent: :destroy
  has_many :project_status_histories, -> { order(created_at: :desc) }, dependent: :destroy

  validates_presence_of :name
  validates_uniqueness_of :name

  STATUSES = %w[Draft Pending Published Deleted].freeze
end

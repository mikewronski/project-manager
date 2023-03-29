class Project < ApplicationRecord
  has_many :comments

  STATUSES = %w[Draft Pending Published Deleted].freeze
end

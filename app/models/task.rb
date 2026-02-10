class Task < ApplicationRecord
  belongs_to :board

  STATUSES = ["todo", "in_progress", "done"]

  validates :title, presence: true
  validates :status, inclusion: { in: STATUSES }
end

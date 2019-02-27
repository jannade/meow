class Goal < ApplicationRecord
  belongs_to :connection
  has_many :milestones

  def perc_completed
    if self.milestones.count > 0
      total_ms = self.milestones.count
      completed_ms = self.milestones.where(is_completed: true).count
      (completed_ms.to_f / total_ms.to_f)*100
    else
      0
    end
  end
end

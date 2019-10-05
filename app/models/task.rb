class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  # validates :check_started_at

  private

  def check_started_at
    errors.add(:finished_at, 'の日時が開始日よりも前に設定されています。') unless self.started_at < self.finished_at
  end
end

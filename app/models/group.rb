class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :operations, dependent: :destroy

  validates :icon, :name, presence: true

  def timelapse
    start_time = created_at
    end_time = Time.now
    TimeDifference.between(start_time, end_time).humanize
  end

  def self.created_by_current_user(current_user)
    where(user_id: current_user.id).order(created_at: :desc)
  end
end

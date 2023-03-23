class Operation < ApplicationRecord
  belongs_to :author, class_name: 'User', dependent: :destroy, foreign_key: 'author_id'
  has_and_belongs_to_many :groups, dependent: :destroy

  validates :name, :amount, presence: true

  def timelapse
    start_time = created_at 
    end_time = Time.now

    TimeDifference.between(start_time, end_time).humanize
  end
end

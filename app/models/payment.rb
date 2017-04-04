class Payment < ActiveRecord::Base
  belongs_to :student
  belongs_to :tuition

  validates :student, :tuition, presence: true
  validates :student, uniqueness: { scope: :tuition }
end

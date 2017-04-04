class Tuition < ActiveRecord::Base
    has_many :payments, dependent: :destroy
    has_many :students, through: :payments
    validates :deadline, presence: true
    
    accepts_nested_attributes_for :payments
end

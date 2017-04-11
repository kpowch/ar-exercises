class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store, presence: true

  validates :first_name, :last_name, presence: true

  validates :hourly_rate, numericality: { only_integer: true }

  validates_inclusion_of :hourly_rate, in:40..200
end

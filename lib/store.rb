class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }

  validates :annual_revenue,
    numericality: { :only_integer => true, :greater_than => -1 }

  before_destroy :check_for_employees

  private
    def check_for_employees
      # TODO this is for some reason always true because the employees
      # are being added to the store even when they don't pass validation
      if employees.any?
        errors[:base] << "Cannot delete a store that has employees"
        throw :abort
      end
    end
end

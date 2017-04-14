class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }

  validates :annual_revenue,
    numericality: { :only_integer => true, :greater_than => -1 }

  before_destroy :can_destroy?

  private
    def can_destroy?
      puts "\nThis store has #{self.employees.where.not(id: nil).count} employee(s)"
      if self.employees.where.not(id: nil).count > 0 # self.employees.map(!&:persisted?).any?  is another way of doing it
        errors[:base] << "Cannot delete a store that has employees"
        throw :abort
      end
    end
end

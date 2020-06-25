module Actualize
  class Manager < Employee
    include EmailReportable
    
    def initialize(input_options)
      super
      @employees = input_options[:employees]
    end

    def give_all_raises
      @employees.each do |employee|
        employee.give_annual_raise
      end
    end

    def fire_all_employees
      # get the employees
      @employees.each do |employee|
        employee.active = false
      end
      # go through each of them
      # fire them
    end
    
  end
end
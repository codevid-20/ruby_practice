
class Employee
  attr_reader :first_name, :active
  attr_writer :active
  
  def initialize(input_options)    
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{first_name} #{@last_name} makes $#{@salary} per year."
  end

  def give_annual_raise
    # @salary = @salary * 1.05
    @salary *= 1.05
  end
end

employee1 = Employee.new(first_name: "Majora", last_name: "Carter", salary: 70000, active: true)

# employee1.print_info

# original
# employee2 = Employee.new({:first_name => "Danilo", :last_name => "Campos", :salary => 80000, :active => true})

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 80000, active: true)


# p employee2.active
# employee2.active = true
# p employee2.active


# employee2.give_annual_raise
# employee2.print_info


class Manager < Employee
  def initialize(input_options)    
    super
    @employees = input_options[:employees]
  end

  def give_all_raises
    # give all the employees raises
    
    # find the employees
    @employees[0].give_annual_raise
    @employees[1].give_annual_raise
    # go to each of them
    # give them a raise
  end
  
  def send_report
    p "sending report"
    # some code that sends emails
    p "totally just sent the report"
  end
end


manager = Manager.new(first_name: "Manny", last_name: "Mars", salary: 100000, active: true, employees: [employee1, employee2])

# manager.print_info
# manager.send_report

employee1.print_info
employee2.print_info

manager.give_all_raises

p "-" * 10

employee1.print_info
employee2.print_info


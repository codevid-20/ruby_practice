
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

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 80000, active: false)


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
  
  def send_report
    p "sending report"
    # some code that sends emails
    p "totally just sent the report"
  end
end


manager = Manager.new(first_name: "Manny", last_name: "Mars", salary: 100000, active: true, employees: [employee1, employee2])

manager.print_info
manager.send_report

p employee1.active
p employee2.active

manager.fire_all_employees

p "-" * 10

p employee1.active
p employee2.active


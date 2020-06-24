
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

# employee1 = Employee.new("Majora", "Carter", 70000, true)

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
  def send_report
    p "sending report"
    # some code that sends emails
    p "totally just sent the report"
  end
end


manager = Manager.new({first_name: "Manny", last_name: "Mars", salary: 100000, active: true})

manager.print_info
manager.send_report
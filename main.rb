require_relative 'employee.rb'
require_relative 'email_reportable'
require_relative 'manager.rb'
require_relative 'intern.rb'

employee1 = Employee.new(first_name: "Majora", last_name: "Carter", salary: 70000, active: true)

employee1.print_info

# original
# employee2 = Employee.new({:first_name => "Danilo", :last_name => "Campos", :salary => 80000, :active => true})

employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 80000, active: false)


p employee2.active
employee2.active = true
p employee2.active


employee2.give_annual_raise
employee2.print_info




manager = Manager.new(first_name: "Manny", last_name: "Mars", salary: 100000, active: true, employees: [employee1, employee2])

manager.print_info
manager.send_report

p employee1.active
p employee2.active

manager.fire_all_employees

p "-" * 10

p employee1.active
p employee2.active


# intern
# can do everything an employee can do
# and it can also send reports

intern = Intern.new(first_name: "Ingrid", last_name: "Ingerssonn", salary: 0, active: true)

intern.print_info

intern.send_report
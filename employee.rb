# model an employee using ruby
# first name
# last name
# salary
# active status

# Array

# employee1 = ["Majora", "Carter", 70000, true]
# # Majora Carter makes $70000 per year
# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# employee2 = ["Danilo", "Campos", 80000, false]
# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# # Hash --------------------------------
# employee1 = {"first_name" => "Majora", "last_name" => "Carter", "salary" => 70000, "active" => true}

# p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."
# old school
# employee2 = {:first_name => "Danilo", :last_name => "Campos", :salary => 80000, :active => false}
employee2 = {last_name: "Campos", salary: 80000, active: false, first_name: "Danilo"}

# p employee2[:first_name]

# p employee2

# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."


# Class


class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def first_name
    @first_name
  end

  def active
    @active
  end

  def active=(input_active)
    @active = input_active
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

employee2 = Employee.new("Danilo", "Campos", 80000, false)

p employee2.active
employee2.active = true
p employee2.active

# employee2.give_annual_raise
# employee2.print_info
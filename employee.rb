# model an employee using ruby
# first name
# last name
# salary
# active status

# Array

employee1 = ["Majora", "Carter", 70000, true]
# Majora Carter makes $70000 per year
p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

employee2 = ["Danilo", "Campos", 80000, false]
p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# Hash --------------------------------
employee1 = {"first_name" => "Majora", "last_name" => "Carter", "salary" => 70000, "active" => true}

p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."
# old school
# employee2 = {:first_name => "Danilo", :last_name => "Campos", :salary => 80000, :active => false}
employee2 = {last_name: "Campos", salary: 80000, active: false, first_name: "Danilo"}

p employee2

p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."




# Hash
# Class

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Clear the existing data
Task.destroy_all
Employee.destroy_all
Team.destroy_all
Project.destroy_all

# Create teams - Name, Department, Size, Project_id
team1 = Team.create(name: 'Team 1', department: 'Department 1', size: 2)
team2 = Team.create(name: 'Team 2', department: 'Department 2', size: 3)
team3 = Team.create(name: 'Team 3', department: 'Department 3', size: 2)
team4 = Team.create(name: 'Team 4', department: 'Department 4', size: 3)
team5 = Team.create(name: 'Team 5', department: 'Department 5', size: 3)
team6 = Team.create(name: 'Team 6', department: 'Department 6', size: 4)

puts 'Created Teams'

# Create employees - Name, Email, Password, is_admin, team_id
employee1 = Employee.create(name: 'John Doe', email: 'john@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team1)
employee2 = Employee.create(name: 'Robert Brown', email: 'robert@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: true, team: team1)
employee3 = Employee.create(name: 'Emily Wilson', email: 'emily@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team2)
employee4 = Employee.create(name: 'David Johnson', email: 'david@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: true, team: team2)
employee5 = Employee.create(name: 'Jennifer Lee', email: 'jennifer@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team2)
employee6 = Employee.create(name: 'Andrew Wilson', email: 'andrew@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team3)
employee7 = Employee.create(name: 'Emily Davis', email: 'emily@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: true, team: team3)
employee8 = Employee.create(name: 'Daniel Smith', email: 'daniel@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team4)
employee9 = Employee.create(name: 'Olivia Brown', email: 'olivia@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: true, team: team4)
employee10 = Employee.create(name: 'William Johnson', email: 'william@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team4)
employee11 = Employee.create(name: 'Sophia Lee', email: 'sophia@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team5)
employee12 = Employee.create(name: 'Jacob Wilson', email: 'jacob@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: true, team: team5)
employee13 = Employee.create(name: 'Ava Davis', email: 'ava@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team5)
employee14 = Employee.create(name: 'Alexander Smith', email: 'alexander@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team6)
employee15 = Employee.create(name: 'Minho Kim', email: 'minho@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team6)
employee16 = Employee.create(name: 'Felix Lee', email: 'felix@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: false, team: team6)
employee17 = Employee.create(name: 'Christopher Bang', email: 'christopher@chaostheory.com', password:'12345', password_confirmation: '12345', is_admin: true, team: team6)

puts 'Created Employees'

# Create projects - Name, Due_Date, On_time(boolean)
project1 = Project.create(name: 'Project 1', due_date: Date.today + 30.days, on_time: false, team: team1)
project2 = Project.create(name: 'Project 2', due_date: Date.today + 60.days, on_time: true, team: team2)
project3 = Project.create(name: 'Project 3', due_date: Date.today + 45.days, on_time: false, team: team3)
project4 = Project.create(name: 'Project 4', due_date: Date.today + 75.days, on_time: true, team: team4)
project5 = Project.create(name: 'Project 5', due_date: Date.today + 90.days, on_time: true, team: team5)
project6 = Project.create(name: 'Project 6', due_date: Date.today + 120.days, on_time: false, team: team6)

puts 'Created Projects'

# Create tasks - name, due_date, status, employee_id, project_id, team_id
Task.create(name: 'Task 1', due_date: Date.today + 7.days, status: 'On Time', employee: employee1, project: project1)
Task.create(name: 'Task 2', due_date: Date.today + 14.days, status: 'Behind Schedule', employee: employee1, project: project1)

Task.create(name: 'Task 3', due_date: Date.today + 21.days, status: 'On Time', employee: employee2, project: project1)
Task.create(name: 'Task 4', due_date: Date.today + 30.days, status: 'On Time', employee: employee2, project: project1)

Task.create(name: 'Task 5', due_date: Date.today + 45.days, status: 'Ahead of Schedule', employee: employee3, project: project2)
Task.create(name: 'Task 6', due_date: Date.today + 60.days, status: 'On Time', employee: employee3, project: project2)

Task.create(name: 'Task 7', due_date: Date.today + 75.days, status: 'Behind Schedule', employee: employee4, project: project2)
Task.create(name: 'Task 8', due_date: Date.today + 90.days, status: 'On Time', employee: employee4, project: project2)

Task.create(name: 'Task 9', due_date: Date.today + 105.days, status: 'Ahead of Schedule', employee: employee5, project: project2)
Task.create(name: 'Task 10', due_date: Date.today + 120.days, status: 'On Time', employee: employee5, project: project2)

Task.create(name: 'Task 11', due_date: Date.today + 135.days, status: 'Behind Schedule', employee: employee6, project: project3)
Task.create(name: 'Task 12', due_date: Date.today + 150.days, status: 'On Time', employee: employee6, project: project3)

Task.create(name: 'Task 13', due_date: Date.today + 165.days, status: 'Ahead of Schedule', employee: employee7, project: project3)
Task.create(name: 'Task 14', due_date: Date.today + 180.days, status: 'On Time', employee: employee7, project: project3)

Task.create(name: 'Task 15', due_date: Date.today + 30.days, status: 'Behind Schedule', employee: employee8, project: project4)
Task.create(name: 'Task 16', due_date: Date.today + 45.days, status: 'On Time', employee: employee8, project: project4)

Task.create(name: 'Task 17', due_date: Date.today + 60.days, status: 'On Time', employee: employee9, project: project4)
Task.create(name: 'Task 18', due_date: Date.today + 75.days, status: 'Behind Schedule', employee: employee9, project: project4)

Task.create(name: 'Task 19', due_date: Date.today + 90.days, status: 'On Time', employee: employee10, project: project4)
Task.create(name: 'Task 20', due_date: Date.today + 105.days, status: 'On Time', employee: employee10, project: project4)

Task.create(name: 'Task 21', due_date: Date.today + 120.days, status: 'Ahead of Schedule', employee: employee11, project: project5)

Task.create(name: 'Task 22', due_date: Date.today + 135.days, status: 'On Time', employee: employee12, project: project5)

Task.create(name: 'Task 23', due_date: Date.today + 150.days, status: 'Behind Schedule', employee: employee13, project: project5)
Task.create(name: 'Task 24', due_date: Date.today + 165.days, status: 'On Time', employee: employee13, project: project5)
Task.create(name: 'Task 25', due_date: Date.today + 180.days, status: 'Ahead of Schedule', employee: employee13, project: project5)

Task.create(name: 'Task 26', due_date: Date.today + 30.days, status: 'On Time', employee: employee14, project: project6)
Task.create(name: 'Task 27', due_date: Date.today + 45.days, status: 'Behind Schedule', employee: employee14, project: project6)

Task.create(name: 'Task 28', due_date: Date.today + 60.days, status: 'On Time', employee: employee15, project: project6)
Task.create(name: 'Task 29', due_date: Date.today + 75.days, status: 'On Time', employee: employee15, project: project6)

Task.create(name: 'Task 30', due_date: Date.today + 90.days, status: 'Ahead of Schedule', employee: employee16, project: project6)
Task.create(name: 'Task 31', due_date: Date.today + 105.days, status: 'On Time', employee: employee16, project: project6)

Task.create(name: 'Task 32', due_date: Date.today + 120.days, status: 'Behind Schedule', employee: employee17, project: project6)

puts 'Seeded all Tasks'

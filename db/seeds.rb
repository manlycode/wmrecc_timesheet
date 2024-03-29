Weekday.create!([
  {id: 1, name: "Monday" },
  {id: 2, name: "Tuesday"}, 
  {id: 3, name: "Wednesday"}, 
  {id: 4, name: "Thursday"}, 
  {id: 5, name: "Friday"}, 
  {id: 6, name: "Saturday"}, 
  {id: 7, name: "Sunday"}
])

Category.create!([
  {id: 1, name: "Admin", department_id: 1, active: true},
  {id: 2, name: "Vol Svcs", department_id: 1, active: true},
  {id: 3, name: "Tutoring", department_id: 1, active: true},
  {id: 4, name: "Peer Support", department_id: 1, active: true},
  {id: 5, name: "Parent Engagement", department_id: 1, active: true},
  {id: 6, name: "School Engagement", department_id: 1, active: true}
])

Department.create!([
  {id: 1, name: "All", active: true},
])

User.create!([
  {id: 1, fname: "Susan",    lname: "Kragt", email: "susan@kragt.com",    active: true,  admin: true,  department_id: 1, supervisor_id: nil, password: "foobar", password_confirmation: "foobar", annual_time_off: 186.5, standard_hours: 80, salary_rate: 12345.67, hourly_rate: 9.65 },
  {id: 2, fname: "Chip",     lname: "Kragt", email: "chip@kragt.com",     active: true,  admin: true,  department_id: 1, supervisor_id: 1,   password: "foobar", password_confirmation: "foobar", annual_time_off: 186.5, standard_hours: 6,  salary_rate: 0,        hourly_rate: 0 },
  {id: 3, fname: "Inactive", lname: "Admin", email: "inactive@admin.com", active: false, admin: true,  department_id: 1, supervisor_id: 2,   password: "foobar", password_confirmation: "foobar", annual_time_off: 186.5, standard_hours: 80, salary_rate: 12345.67, hourly_rate: 9.65 },
  {id: 4, fname: "Active",   lname: "User",  email: "active@user.com",    active: true,  admin: false, department_id: 1, supervisor_id: 7,   password: "foobar", password_confirmation: "foobar", annual_time_off: 186.5, standard_hours: 64, salary_rate: 12345.67, hourly_rate: 9.65 },
  {id: 5, fname: "Active",   lname: "User2", email: "active@user2.com",   active: true,  admin: false, department_id: 1, supervisor_id: 7,   password: "foobar", password_confirmation: "foobar", annual_time_off: 186.5, standard_hours: 40, salary_rate: 12345.67, hourly_rate: 9.65 },
  {id: 6, fname: "Inactive", lname: "User",  email: "inactive@user.com",  active: false, admin: false, department_id: 1, supervisor_id: 1,   password: "foobar", password_confirmation: "foobar", annual_time_off: 186.5, standard_hours: 80, salary_rate: 12345.67, hourly_rate: 9.65 },
  {id: 7, fname: "Active",   lname: "Admin", email: "active@admin.com",   active: true,  admin: true,  department_id: 1, supervisor_id: 1,   password: "foobar", password_confirmation: "foobar", annual_time_off: 186.5, standard_hours: 80, salary_rate: 12345.67, hourly_rate: 9.65 }
])

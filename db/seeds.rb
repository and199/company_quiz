Supervisor.create(name: "Paweł Laskowski", email: "supervisor1@example.com", password: "password"))
Supervisor.create(name: "Marcin Ziółkowski", email: "supervisor2@example.com", password: "password"))

Employee.create(name: "Stefan Sobczak", email: "employee1@example.com", supervisor: Supervisor.first, password: "password")
Employee.create(name: "Mariusz Szymczak", email: "employee2@example.com", supervisor: Supervisor.first, password: "password")
Employee.create(name: "Dominik Kołodziej", email: "employee3@example.com", supervisor: Supervisor.first, password: "password")
Employee.create(name: "Jarosław Makowski", email: "employee4@example.com", supervisor: Supervisor.first, password: "password")
Employee.create(name: "Łukasz Wasilewski", email: "employee5@example.com", supervisor: Supervisor.first, password: "password")

Employee.create(name: "Dariusz Baranowski", email: "employee6@example.com", supervisor: Supervisor.second, password: "password")
Employee.create(name: "Krzysztof Gajewski", email: "employee7@example.com", supervisor: Supervisor.second, password: "password")
Employee.create(name: "Zbigniew Przybylski", email: "employee8@example.com", supervisor: Supervisor.second, password: "password")
Employee.create(name: "Tomasz Cieślak", email: "employee9@example.com", supervisor: Supervisor.second, password: "password")
Employee.create(name: "Wojciech Adamski", email: "employee10@example.com", supervisor: Supervisor.second, password: "password")


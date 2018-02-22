Supervisor.destroy_all
Employee.destroy_all
Question.destroy_all
QuestionChoice.destroy_all
Answer.destroy_all

Supervisor.create(name: "Paweł Laskowski", email: "supervisor1@example.com", password: "password")
Supervisor.create(name: "Marcin Ziółkowski", email: "supervisor2@example.com", password: "password")

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

question1 = Question.create(question: "Kto założył firmę?", correct_answer: "Adam")
%w(Adam Bartek Cyryl Daniel).each { |choice| question1.choices.create(choice: choice) }
question2= Question.create(question: "W którym roku powstała firma?", correct_answer: "1990")
%w(1990 1995 2000 2005).each { |choice| question2.choices.create(choice: choice) }
question3= Question.create(question: "Ilu pracowników ma firma?", correct_answer: "5000")
%w(5000 4000 3000 2000).each { |choice| question3.choices.create(choice: choice) }
question4 = Question.create(question: "Gdzie firma nie ma siedziby?", correct_answer: "Niemcy")
%w(Niemcy Polska Indie Francja).each { |choice| question4.choices.create(choice: choice) }
question5 = Question.create(question: "Czym zajmuje się firma?", correct_answer: "IT")
%w(IT Księgowość Transport Szkolenia).each { |choice| question5.choices.create(choice: choice) }

# Employee.all.each do |employee|
#   questions = Question.all.to_a
#   3.times do
#     question = questions.shuffle!.pop
#     employee.answers.create(question: question, answer: question.choices.sample.choice)
#   end
# end
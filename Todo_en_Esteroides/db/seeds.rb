# Este archivo sirve para crear registros de prueba
20.times do 
	Task.create!(activity: Faker::Hacker.say_something_smart, completed: Faker::Boolean.boolean)
end
class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario



	
  def index(tasks)
    tasks.each_with_index do |task, index|
    complete = task.completed ? "X" :  " " ;
    puts "#{task.id}.- [#{complete}] #{task.activity}"
    end
  end
	

  def create(task)
     puts "Creaste la tarea de: \"#{task.activity}\" a tu lista"
  end

  def delete(task)
    puts "Borraste la tarea de: \"#{task.activity}\" a tu lista"
  end

  def complete(task)
    puts "Completaste la tarea de: \"#{task.activity}\" a tu lista"
  end

	def error
    puts "El comando que elegiste, es incorrecto"
	end


end

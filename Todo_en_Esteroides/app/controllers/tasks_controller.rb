class TasksController

  def initialize(argv)
    @view = TasksView.new
    @argv = argv
    command = @argv[0]
    index_num = @argv[1]
    arguments = arg(@argv)
    if command == "index"
      index
    elsif command == "add"
      add(arguments)
    elsif command == "delete"
      delete(index_num)
    elsif command == "complete"
      complete(index_num)
    else
      error
    end
  end

  def arg(array)
    array.delete_at(0)
    array.join(' ')
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    @view.index(Task.all)
  end

  def add(activity, complete = false)
    # task = Task.add
    task = Task.create(activity: activity, completed: complete)
    @view.create(task)
  end


  def delete(num_delete)
    delete_task = Task.find_by(id: num_delete)
    delete_task.destroy
    @view.delete(delete_task)
  end

  def complete(num_complete)
    complete = Task.find_by(id: num_complete)
    complete.update(completed: true)
    @view.complete(complete)
  end

  def error
    @view.error
  end


## correr el archivo todo.rb
# ruby todo.rb index -- Muestran las tareas realizadas y las que nombre
# ruby todo.rb add La nueva tarea -- Agrega una nueva tarea, donde "La nueva tarea", es la exactamente eso
# ruby todo.rb delete 2 -- Borra una tarea, donde "2", es el indice de la tarea a borrar
# ruby todo.rb index -- Muestran las tareas realizadas y las que nombre


end

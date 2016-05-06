# Create the object Person, which has the property: tasks (of the array type).
# Add 3 completed and 3 unfinished tasks to the array so that each task is based
# on the following properties: name (string) and completed (boolean).
# Display only the completed tasks.
require 'colorize'

Task = Struct.new(:name,:completed)

class Person
  attr_accessor :tasks
  attr_writer :choice

  def initialize
    @tasks = []
    @choice = ""
    menu_options = {1 => :create, 2 => :display}

    while @choice == "" || @choice.to_i != 5
      show_initial_menu
      @choice = gets.chomp
      choose_menu_option(menu_options[@choice.to_i])
    end

    if @choice.to_i == 5
      puts "Program has finished."
      exit
    end
  end

  private
  def choose_menu_option(menu)
    matrix = {create: {0 => :show_create_menu, 1 => :add_new_task, 2 => :create_completed_tasks, 3 => :create_unfinished_tasks},
              display: {0 => :show_display_menu, 1 => :show_all_tasks, 2 => :show_completed_tasks, 3 => :show_unfinished_tasks}
            }
    begin
      send(matrix[menu][0])
      @choice = gets.chomp
      while @choice.to_i == 5
        p "Invalid choice.Try again."
        @choice = gets.chomp
      end
      send(matrix[menu][@choice.to_i])
    rescue
      if @choice.to_i == 4
        show_initial_menu
      elsif @choice.to_i != 5
        puts "Invalid choice."
      end
    end

  end

  def show_initial_menu
      message = "Choose one of the following actions:\n" \
                "1 - CREATE\n" \
                "2 - DISPLAY\n" \
                "5 - EXIT\n" \
                "Type 1, 2 or 5."
      puts message
    end

  def show_create_menu
      message = "Please choose what to do:\n" \
                "1 - add new task\n" \
                "2 - create completed tasks\n" \
                "3 - create unfinished tasks\n" \
                "4 - back to the INITIAL MENU\n" \
                "Type 1, 2, 3, or 5."
      puts message
    end

  def show_display_menu
      message = "Please choose what to do:\n" \
                "1 - display all tasks\n" \
                "2 - display completed tasks\n" \
                "3 - display unfinished tasks\n" \
                "4 - back to the INITIAL MENU\n" \
                "Type 1, 2, 3 or 5."
      puts message
    end

  def add_new_task
    p "Task name: "
    task_name = gets.chomp
    p "Task completed: (y or n)"
    completed = gets.chomp.downcase
    if completed == "y"
      completed = true
    else
      completed = false
    end

    @tasks << Task.new(task_name,completed)
    message = "Task was has been added successfully."
    puts message
  end

  def show_completed_tasks
    @tasks.each do |task|
      p "#{task.name} is completed." if task.completed
    end
  end

  def show_unfinished_tasks
    @tasks.each do |task|
      p "#{task.name} is unfinished." if !task.completed
    end
  end

  def show_all_tasks
    @tasks.each do |task|
      p "#{task.name} is #{task.completed ? "completed." : "unfinished."}"
    end
  end

  def create_completed_tasks
    task_no = 0
    3.times do
      @tasks << Task.new("Completed task #{task_no += 1}", true)
    end
  end

  def create_unfinished_tasks
    task_no = 0
    3.times do
      @tasks << Task.new("Unfinished task #{task_no += 1}", false)
    end
  end

end

me = Person.new

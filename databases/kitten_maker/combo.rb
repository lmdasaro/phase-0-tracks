require 'sqlite3'

list = SQLite3::Database.new("todolist.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS todolist(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    due_date VARCHAR(255)
  )
SQL

list.execute(create_table_cmd)

def display(list)
  todolist = list.execute("SELECT * FROM todolist ORDER BY due_date")
  todolist.each do |item|
    puts "#{item[0]}|#{item[1]} DUE: #{item[2]}"
  end
end

def add(list, task, due_date)
  list.execute("INSERT INTO todolist (task, due_date) VALUES (?, ?)", [task, due_date])
end

def remove(list, id_number)
  list.execute("DELETE FROM todolist WHERE id = ?", [id_number])
end

def update_date(list, id_number, new_date)
  list.execute("UPDATE todolist SET due_date = ? WHERE id = ?", [new_date, id_number])
end

def update_task(list, id_number, new_task)
  list.execute("UPDATE todolist SET task = ? WHERE id = ?", [new_task, id_number])
end

##This is all the info for sqlite3. Now for the main ruby part.

puts "This is your electronic To-do list. Nice to meet you!"

loop do
	puts "Would you like to *display* the to-do list, *add*, *remove*, or *update* items? Please type 'exit' if you wish to close the list."
	command = gets.chomp.downcase

	case command

	when "display"
		display(list)

	when "add"
		puts "What would you like to add?"
		addition = gets.chomp
		puts "When is it due? (MM/DD/YY)"
		date = gets.chomp
		add(list, addition, date)
		display(list)

	when "remove"
		puts "What number on the list would you like to remove?"
		removal = gets.chomp.to_i
		remove(list, removal)
		display(list)

	when "update"
		display(list)
		puts "What number on the list would you like to update?"
		update_num = gets.chomp.to_i
		loop do
			puts "Would you like to update the *task* or *date*?"
			update_option = gets.chomp.downcase
			if column -- "task"
				puts "What is the new task?"
				new_task = gets.chomp
        		update_task(list, update_num, new_task)
        	break
        	elsif column == "date"
        		puts "What's the new date? (MM/DD/YY)"
        		new_date = gets.chomp
        		update_date(list, update_num, new_date)
        	break
        	else 
        	puts "Please type 'task' or 'date'."
        end
    end
    display(list)
when "exit"
	break
else 
	puts "Please type 'display', 'add', 'remove', or 'update'. Or please type 'exit' if you wish to close the list."
end
end
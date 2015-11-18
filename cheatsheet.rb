# main menu
# have a case statement for main menu options
 # command line menu
 # ide menu
  # search menu
def main_menu
  puts "My Cheatsheet"
  puts "Select a choice:"
  puts "1. Command Line"
  puts "2. IDE"
  puts "3. Search"
  puts "4. Quit"
  @choice1 = gets.strip.to_i
  # puts "I typed: #{number}"
  select_choice
end
def cmd_choice
  if @choice2 == 1
    puts "Common Commands"
    puts `man pwd`
  elsif @choice2 == 2
    puts `man cd`
  elsif @choice2 == 3
    puts `man ls`
  elsif @choice2 == 4
    puts `man mkdir`
  elsif @choice2 == 5
    main_menu
  else 
    "Error : Wrong choice."
      
  end
end

def command_line
  case @choice1
    when 1
      puts "Which do you want"
      puts "1. pwd"
      puts "2. cd"
      puts "3. ls"
      puts "4. mkdir"
      puts "5. Back to Main Menu"
      @choice2 = gets.strip.to_i
      cmd_choice
    else
      puts "Error: No Kudos - Try again :/"
  end
end

def select_choice
  if @choice1 == 1
    command_line
  elsif @choice1 == 2
    id_choice1
  elsif @choice1 == 3
    puts "What would you like to search for?"
    search
  else
    puts "Error: No Kudos - Try again :/"
  end
end




def ide_choice
  if @choice3 == 1
    puts `man vim`
  elsif @choice3 == 2
    puts "cmd + [ = Move Indentation left"
    puts "cmd + ] = Move Indentation right"
    puts "cmd + / = hashtag line out"
  elsif @choice3 == 3
    main_menu
  else
    puts "Error: No Kudos - Try again :/"
  end
end

# case @choice1
#   when 3
#     puts `man #{cmd}`
# end
def id_choice1
  case @choice1
    when 2
      puts "Which Text Editor would you like to learn?"
      puts "1. VIM"
      puts "2. Sublime"
      puts "3. Back to Main Menu"
      @choice3 = gets.strip.to_i
      ide_choice
    else
      puts "Error: No Kudos - Try again :/"
  end
end

def search
  search = gets.strip
  puts `man #{search}`
end

main_menu

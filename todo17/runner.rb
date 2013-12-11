require "./jukebox.rb"
# require "./song_library.rb"

def welcome
  puts "Welcome to Ruby Console Jukebox!"
end

def get_command
  gets.chomp
end

def run
  puts "Enter a command to continue. Type 'help' for a list of commands."
  command = get_command
  if command.downcase != "exit"
    run_command(command)
  else
    abort("Thanks for visiting!")
  end
end


def run_command(command)
  case command
    when "help"
      show_help
    else
      jukebox(command)
  end
end

def show_help
  print "Never worked a jukebox, eh? Pretty standard. Available commands are:\n" 
  print "'help' - shows this menu\n"
  print "'list' - lists the whole song library\n"
  print "or you can enter an artist's name to show that artist's songs\n"
  print "or you can enter a song title to play that song!\n"
  puts
  run
end

welcome
run
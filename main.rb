require './event_handler'
require './event_listener'

PROMPT = '> '

def run
  handler = EventHandler.new
  puts 'Welcome to MegaObserver 9000. (c) Compuworld Hypermeganet.'
  puts "Type '-h' for help."
  print PROMPT
  while command = gets.chomp
    if command.empty?
      break
    end

    case command
    when 'add'
      print 'Enter a name for the new listener, please: '
      name = gets.chomp
      handler.add_observer(EventListener.new(name))
    when 'send'
      print 'Enter a message to send: '
      message = gets.chomp
      handler.send_event(message)
    when '-h'
      puts 'Available commands:'
      puts " add\tAdd a new listener."
      puts " send\tSend a new message."
      puts "..."
      puts "That's pretty much it."
    else
      puts "Couldn't understand that command"
    end

    print PROMPT
  end
end

trap "SIGINT" do
  puts "\nSo long, see you tomorrow."
  exit 130
end

run

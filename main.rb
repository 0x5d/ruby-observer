require './event_handler.rb'
require './event_listener.rb'

def run
  handler = EventHandler.new
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
    else
      puts "Couldn't understand that command"
    end
  end
end

run

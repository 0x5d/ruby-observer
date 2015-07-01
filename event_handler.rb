require 'observer'

class EventHandler
  include Observable

  def initialize
    @observers = []
  end

  def send_event(message)
    changed
    notify_observers(message)
  end
end

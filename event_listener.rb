class EventListener

  def initialize(name)
    @name = name
  end

  def update(message)
    puts "I, the great #{@name}, received this message: #{message}"
  end
end

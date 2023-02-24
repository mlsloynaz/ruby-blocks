class Application
  attr_accessor :environment

  def initialize
    @environment = :development
  end

  def connect_to_database
    puts "Connecting to #{@environment} database..."
  end

  def handle_request
    puts "Handling #{@environment} request..."
  end

  def write_to_log
    puts "Writing to #{@environment} log file..."
  end

  # new Method

  def in_production
    old_environment = @environment
    @environment = :production
    yield
    @environment = old_environment
    puts "Reset environment to #{@environment}"
  end

  # new Method with exception handle
  def in_production_version2
    old_environment = @environment
    @environment = :production

  rescue Exception => e
    puts e.message
  ensure
    @environment = old_environment
    puts "Reset environment to #{@environment}"
  end
  # More generic
  def in_environment(new_environment)
    old_environment = @environment
    @environment = new_environment
    yield
  rescue Exception => e
    puts e.message
  ensure
    @environment = old_environment
    puts "Reset environment to #{@environment}"
  end
end

app = Application.new
app.connect_to_database
app.handle_request
app.write_to_log

# with new method
app.in_production do
  app.connect_to_database
  app.handle_request
  app.write_to_log
end

class SecretFile
  #attr_reader :data

  def initialize(secret_data, security_logger)
    @data = secret_data
    @logger = security_logger
  end

  def data
    @logger.create_log_entry
    @data
  end
end

class SecurityLogger
  def create_log_entry
    puts "Secret data was accessed on #{Time.now}."
  end
end

security_logger = SecurityLogger.new
secret_file = SecretFile.new("Caryn was born in 1985", security_logger)
puts secret_file.data
secret_data = secret_file.data
puts secret_data
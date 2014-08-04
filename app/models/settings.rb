# Sets the username and password for the admin interface
class Settings

  def self.username
    config['username']
  end

  def self.password
    config['password']
  end

  def self.config
    @yaml ||= YAML.load_file("#{Rails.root}/config/application.yml")[Rails.env]
  end
end

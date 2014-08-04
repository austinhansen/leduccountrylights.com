# Encoding: utf-8
class Default < Thor

  include Thor::Actions

  source_paths << Dir.pwd

  desc 'setup', 'Setup all the requirements that are needed for local development.'
  def setup
    configure_database
    configure_application
    bootstrap
  end

  private

  def bootstrap
    run('bundle exec rake db:reset')
  end

  def configure_database
    @database_username = ENV['LOCAL_DATABASE_USERNAME'] || ask('Database username?', default: 'root')
    @database_password = ENV['LOCAL_DATABASE_PASSWORD'] || ask('Database password?', default: '')
    template 'config/database.yml.erb', 'config/database.yml'
  end

  def configure_application
    @application_username = ENV['COUNTRY_LIGHTS_USERNAME'] || ask('Admin username?', default: 'foo')
    @application_password = ENV['COUNTRY_LIGHTS_PASSWORD'] || ask('Admin password?', default: 'bar')
    template 'config/application.yml.erb', 'config/application.yml'
  end
end

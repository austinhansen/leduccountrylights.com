# Encoding: utf-8
class Default < Thor

  include Thor::Actions

  source_paths << Dir.pwd

  desc 'setup', 'Setup all the requirements that are needed for local development.'
  def setup
    configure_database
    bootstrap
  end

  private

  def bootstrap
    run('bundle exec rake db:reset')
  end

  def configure_database
    database_username = ENV['LOCAL_DATABASE_USERNAME'] || ask('Database username?', default: 'root')
    database_password = ENV['LOCAL_DATABASE_PASSWORD'] || ask('Database password?', default: '')
    template 'config/database.yml.erb', 'config/database.yml', {
      database_username: database_username,
      database_password: database_password
    }
  end

end

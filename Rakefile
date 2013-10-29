require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb saab`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb saab`
  end

  desc "run seed file"
  task :seed do
    `ruby seed.rb`
  end
end

# desc "generate new migration file"
# task :genmifi do
#   timestamp = Time.now.strftime('%Y%m%d%H%M%S')
#   exec "touch db/migrate/#{timestamp}_#{ARGV.last}.rb"
# end

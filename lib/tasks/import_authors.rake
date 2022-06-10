namespace :import_authors do
  include Sidekiq::Worker
  desc 'Import Files'
  require 'csv'
  require 'open-uri'
  task :create_authors, [:file] => [:environment] do |t, file|
  	CreateAuthor.new.perform(file[:file])
  end
end

 
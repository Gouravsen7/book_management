class CreateAuthor
  include Sidekiq::Worker
  require 'csv'
  require 'open-uri'
  def perform(csv_file)
    CSV.foreach(csv_file, headers: true) do |row|
    	Author.create!(name: row["name"])
    end
  end
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'nokogiri'
require 'roo'
require 'open-uri'


# TO-DO: Change Roo Gem for Ruby Spreadsheet Gem, would allow
# write access to the sheet and therefore 'cache' values obtained
# from scraping - Reseeding would be much faster

# Open the xlsx
@listings_path = './app/assets/org_dev_stash.xlsx'
@excel = Roo::Spreadsheet.open(@listings_path)
@resource_list = @excel.sheet('Org Dev Stash Content Map')

@resource_list.each(resource: "Resource ", link:"Link") do |hash|
  new_resource = Listing.new(web_url: hash[:link])
  # how can I cache the new resource into the excel?
  new_resource_html = Nokogiri::HTML(open(new_resource.web_url))
  new_resource.name = new_resource_html.search('head title').text
  new_resource.description = new_resource_html.search('head description').text
  new_resource.save
  rescue
  next
 # end
end


# Go through each of the rows, headers activated do
# If the row for url is filled
## use nokogiri to grab the name of the resource
## use nokogiri to grab the content description from the web

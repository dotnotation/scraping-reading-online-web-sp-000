require 'nokogiri'
require 'open-uri'
 

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
 
doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")

p doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")[0]

courses = doc.css("#3c239880-48cf-5ce7-84d0-578546d87586.inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC.title-oE5vT4").text.strip
 
courses.each do |course|
  puts course.text.strip
end
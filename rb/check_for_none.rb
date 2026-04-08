require 'date'

last_disco = Dir['_posts/*'].last

return unless last_disco.include?('none')

file_name = last_disco.split('/').last
last_date = Date.parse(file_name.split('-')[0..2].join('-'))

return if last_date == Date.today

next_disco = "_posts/#{Date.today}-none.md"

File.rename(last_disco, next_disco)

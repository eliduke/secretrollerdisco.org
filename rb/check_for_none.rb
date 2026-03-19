require 'date'

last_disco = Dir['_posts/*'].last

return unless last_disco.include?('none')

_, file    = last_disco.split('/')
curr_date  = file.split('-')[0..2].join('-')
next_date  = Date.parse(curr_date) + 7
next_disco = "_posts/#{next_date}-none.md"

File.rename(last_disco, next_disco)

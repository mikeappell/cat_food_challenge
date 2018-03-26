require './models/cat' # Need to load this first

Dir['./models/*.rb'].each { |file| require file }

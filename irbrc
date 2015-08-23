#!/usr/bin/ruby

IRB.conf[:SAVE_HISTORY] = 10000000

begin
  require 'irb/completion'
rescue Exception => e
  puts "#{e} \nOne of the gems did NOT load. Take a look at your ~/.irbrc file"
end


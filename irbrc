#!/usr/bin/env ruby

begin
  require 'irb/completion'
  require 'rubygems'
  require 'awesome_print'
rescue Exception => e
  puts "#{e} \nOne of the gems did NOT load. Take a look at your ~/.irbrc file"
end


def me(store_front_id = 52)
  user = User.find_by_email('t.szymczak@tukaiz.com')
  StoreFront.current = StoreFront.find(store_front_id)
  StoreFrontUser.current = user.store_front_users.find_by_store_front_id(store_front_id)
  "StoreFront: #{current_store_front.id}, #{current_store_front.name} | StoreFrontUser: #{current_store_front_user.id} | User: #{user.id}"
end

def current_store_front
  StoreFront.current
end

def current_store_front_user
  StoreFrontUser.current
end

def sfs(args = {:all => false})
  if args[:all]
    awesome_print StoreFront.all; nil
  else
    awesome_print StoreFront.all.map{|sf| "#{sf.id} | #{sf.name}" }; nil
  end
end

load './lib/stocks.rb' if File.exists?('./lib/stocks.rb')
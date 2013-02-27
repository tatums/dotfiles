#!/usr/bin/env ruby
require 'irb/completion'
require 'rubygems'
require 'awesome_print'

def me(store_front_id = 52)
  user = User.find_by_email('t.szymczak@tukaiz.com')
  StoreFront.current = StoreFront.find store_front_id
  StoreFrontUser.current = user.store_front_users.find_by_store_front_id(store_front_id)
  current_store_front_user = StoreFrontUser.current
  current_store_front = StoreFront.current
  "StoreFront: #{current_store_front.id}, #{current_store_front.name} | StoreFrontUser: #{current_store_front_user.id} | User: #{user.id}"
end

def sfs(args = {:all => false})
  if args[:all]
    awesome_print StoreFront.all; nil
  else
    awesome_print StoreFront.all.map{|sf| "#{sf.id} | #{sf.name}" }; nil
  end
end

load './lib/stocks.rb' if File.exists?('./lib/stocks.rb')
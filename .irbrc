#!/usr/bin/env ruby
require 'irb/completion'
require 'rubygems'
require 'awesome_print'

def me(store_front_id = 47)
  user = User.find_by_email('t.szymczak@tukaiz.com')
  StoreFront.current = StoreFront.find store_front_id
  StoreFrontUser.current = user.store_front_users.find_by_store_front_id(store_front_id)
end

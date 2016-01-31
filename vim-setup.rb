#!/usr/bin/env ruby

unless system("git --version 2>&1 >/dev/null")
  puts "\n\n ERROR: dude you gotta have GIT installed before we can move on. \n\n"
  abort
end

target_location = "~/.janus"
plugins = [
  {
    name: "vim-jade",
    url: "git@github.com:statianzo/vim-jade.git"
  },
  {
    name: "vim-rspec",
    url: "https://github.com/thoughtbot/vim-rspec.git"
  },
  {
    name: "vim-autoclose",
    url: "https://github.com/Townk/vim-autoclose.git"
  },
  {
    name: "vim-airline",
    url: "https://github.com/bling/vim-airline.git"
  },
  {
    name: "file-line",
    url: "https://github.com/bogado/file-line.git"
  }
]

plugins.each do |hash|
  target_path = File.expand_path("#{target_location}/#{hash[:name]}")
  if File.exists? target_path
    puts "NOTICE: #{target_path} already exists"
  else
    puts "installing plubin #{hash[:name]}"
    system("git clone #{hash[:url]} #{target_location}/#{hash[:name]}")
  end
end

#!/usr/bin/env ruby
# ^ Syntax hint

desc 'Install dependencies'
namespace :tools do
  require_relative 'composer_prestissimo/install'
end

after 'tools:composer', 'tools:composer_prestissimo'

def php_command(args)
  args.to_s
end

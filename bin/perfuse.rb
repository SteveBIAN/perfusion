#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'

require 'perfusion'

program :version, '0.0.1'
program :description, 'Manage your appliances with class'
 
command :launch do |c|
  c.syntax = 'perfuse launch [options]'
  c.summary = ''
  c.description = ''
  c.example 'description', 'command example'
#  c.option '--file', ''
  c.action do |args, options|
#    @loader = Perfusion::Loader::YAML.new(args.first)
#    @config = Kitchen::Config.new(@loader)
    app = Perfusion::YamlMapper.new().load(args.first)
    log "launch", "Launching #{app.name}"
    # Do something or c.when_called Perfuse::Commands::Launch
  end
end

command :remove do |c|
  c.syntax = 'perfuse remove [options]'
  c.summary = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    # Do something or c.when_called Perfuse::Commands::Remove
  end
end


require 'perfusion'

module Perfusion
  class Appliance
    def initialize(config)
#      @loader = Perfusion::Loader::YAML.new()
#      @config = Perfusion::Config.new(@loader)
      @config = config

      @config['machines'] ||= []

      # Instanciate Machine from config
      @config['machines'].reject{ |m| m.is_a?(Perfusion::Machine) }.collect! do |machine|
        Perfusion::Machine.new(machine)
      end
    end

    def name
      @config['name']
    end

    def machines
      @config['machines']
    end
  end
end

require 'perfusion'

module Perfusion
  class Machine

    def initialize(config)
      @config = config

      @config['data'] ||= []
      @config['provide'] ||= [config['name']] # Array(config['provide']) << config['name']

      @config['data'].reject{ |m| m.is_a?(Perfusion::Data) }.collect! do |data|
        Perfusion::Data.new(data)
      end
    end

    def name
      @config['name']
    end

    def provide
      @config['provide']
    end
  end
end

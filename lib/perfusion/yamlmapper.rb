require 'perfusion'

require 'yaml'

module Perfusion
  class YamlMapper
    def load(file)
      yml = ::File.exists?(file) ? YAML.load_file(file) : YAML.load(file)
      Perfusion::Appliance.new(yml)
    end
  end
end

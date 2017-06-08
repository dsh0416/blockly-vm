module Blockly::Operators
  class Arg
    attr_accessor :name, :value

    def initialize(name, value=nil)
      raise TypeError.new('Arg name is not a string') unless name.is_a? String
      @name = name
      @value = value
    end
  end
end

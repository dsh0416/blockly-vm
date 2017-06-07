module Blockly::Operators
  class Arg
    attr_accessor :name, :value

    def initialize(name, value=nil)
      @name = name
      @value = value
    end
  end
end

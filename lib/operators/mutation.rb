module Blockly::Operators
  class Mutation
    attr_accessor :args

    def initialize(args)
      @args = args.inject({}) do |hash, arg|
        raise TypeError.new('Mutation only accepts Arg array as parameter') unless arg.is_a? Arg
        hash[arg.name.to_sym] = arg.value
      end
    end
  end
end

module Blockly::Operators
  class Mutation
    attr_accessor :args

    def initialize(args)
      @args = args.inject({}) do |hash, arg|
        hash[arg.name.to_sym] = arg.value
      end
    end
  end
end

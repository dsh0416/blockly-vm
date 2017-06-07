module Blockly
  class Executor
    class << self
      def ast_arg(ast)
        Blockly::Operators::Arg.new(ast.args[:name])
      end

      def method_missing(method, *args)
        raise "#{method} not implemented"
      end
    end
  end
end

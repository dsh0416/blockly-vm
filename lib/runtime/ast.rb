module Blockly
  class AST
    attr_accessor :operator, :args, :children, :parent, :value

    def initialize(node, parent = nil)
      node = Nokogiri::XML(node) do |config|
        config.options = Nokogiri::XML::ParseOptions::STRICT | Nokogiri::XML::ParseOptions::NOBLANKS
      end.xpath('/')[0] if node.is_a? String

      @operator = "ast_#{node.name}".to_sym
      @parent = parent
      @args = {}
      @value = nil

      case node
      when Nokogiri::XML::Document
        @args = {}
      when Nokogiri::XML::Element
        node.attributes.each do |key, value|
          @args[key.to_sym] = value.value
        end
      when Nokogiri::XML::Text
        @parent.value = node.to_s
      end
      @children = node.children.map do |child|
        AST.new(child, self)
      end

      @children = [] unless @value.nil?
    end

    def execute
      puts operator

      return Executor.send(operator, self) if @children.empty?
      @children.map do |child|
        child.execute
      end
      Executor.send(operator, self)
    end

  end
end

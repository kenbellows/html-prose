require 'polyglot'
require 'treetop'

require './htmlprosenodes.rb'

class Treetop::Runtime::SyntaxNode
  def inspect
    #if self.class == Treetop::Runtime::SyntaxNode
    #  return ''
    #end
    "\n#{"  "*level}<#{self.class.to_s.split(':')[-1]}  \"#{text_value.size > 20 ? text_value[0..4]+'...'+text_value[-6..-1] : text_value}\">#{(elements || []).map{|el| el.inspect}.join ""}"
  end
  
  def to_s
    inspect
  end
  
  def level
    parent ? parent.level + 1 : 0
  end
end


class HTMLProseParser
  # Load the Treetop grammar from the 'phtml.treetop' file and
  # create a new instance of that parser as a class variable
  Treetop.load 'htmlprose.treetop'
  
  # Alternatively, precompile the treetop file with 'tt' and 
  # require the resulting parser module
  #require './htmlprose.rb'
  
  @@parser = HtmlProseParser.new
  
  
  def self.parse(data)
    if data.strip == ''
      tree = ''
    else
      # Pass the data over to the parser instance
      tree = @@parser.parse(data)
    end
    
     
    # If the AST is nil then there was an error during parsing
    # we need to report a simple error message to help the user
    if(tree.nil?)
      raise Exception, "Parse error at offset: #{@@parser.index}"
    end
    
    return tree
  end
  
  def self.parse_file(filename)
    result = []
    File.open(filename) do |file|
      file.readlines.each do |line|
        unless line.strip == ''
          result << self.parse(line)
        end
      end
    end
    return result
  end
end


if $0 == __FILE__
  puts "Parse some lines:"
  loop do
    print '> '
    line = gets.chomp
    puts HTMLProseParser.parse line.downcase
  end
end
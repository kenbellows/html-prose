require 'treetop'

module NodeModule
  def extended
    puts self.class.to_s
  end
end

class SNode < Treetop::Runtime::SyntaxNode
  def initialize(_,__,___)
    puts self.class.to_s
    super
  end
end

module HtmlProse
  class Statement < SNode
  end

  class AskForElement < SNode
  end
  
  class Declaration < SNode
  end
  
  module Quantity
    include NodeModule
  end
  
  class NumberWord < SNode
  end
  
  class SingularNumberWord < SNode
  end
  
  class PluralNumberWord < SNode
  end
  
  class Element < SNode
  end
  
  class Adjective < SNode
  end
  
  class Dimension < SNode
  end
  
  class Metric < SNode
  end
  
  module Color
    include NodeModule
  end
  
  class Properties < SNode
  end
  
  class Property < SNode
  end
  
  class Contents < SNode
  end
  
  
  # Literals
  class ColorWordLiteral < SNode
  end
  
  class RGBLiteral < SNode
  end
  
  class RGBALiteral < SNode
  end
  
  class HSLLiteral < SNode
  end
  
  class HSLALiteral < SNode
  end
  
  class HexLiteral < SNode
  end
  
  class HTML5TagLiteral < SNode
  end
  
  module NumberLiteral
    include NodeModule
  end
  
  class IntegerLiteral < SNode
  end
  
  class FloatLiteral < SNode
  end
  
  class Percent < SNode
  end
  
  class SizeLiteral < SNode
  end
end
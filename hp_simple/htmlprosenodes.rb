require 'treetop'


class SNode < Treetop::Runtime::SyntaxNode

end

module HtmlProse
  module Statement
  end

  class AskForElement < SNode
  end
  
  class Declaration < SNode
  end
  
  module Quantity
  end
  
  module NumberWord
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
  end
  
  class Properties < SNode
  end
  
  class Property < SNode
  end
  
  class Contents < SNode
  end
  
  class Tag < SNode
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
class XmlDocument
  # attr_accessor :xml_hash, :indents

  # def initialize(ind = false)
  # 	@xml_hash = {}
  #   @indents = ind
  # end
    
  # def method_missing(method_name, *args, &block)
  #   if indents
  #    end_line = "\n"
  #   else
  #     end_line = ''
  #   end
    
  #   if block_given?
  #     result = "<#{method_name}>" + end_line
  #     result += yield + end_line
  #     result += "</#{method_name}>"
  #   else
  #      result = "<#{method_name}"
  #      if args[0].is_a?(Hash)
  #       hash = args[0]
  #       key, value = hash.to_a[0]
  #       result += %( #{key}=\"#{value}\")
  #      end
  #      result += "/>"
  #   end
  # end

  def hello(tag = nil)
    result = "<hello"
    if tag.is_a?(Hash)
      key = tag.keys[0]
      value = tag.values[0]
      result += " #{key}=\"#{value}\"" 
    end
    result += "/>"
  end

  def method_missing(method_name, *args, &block)
    tag = args[0]
    result = "<#{method_name}"
    if tag.is_a?(Hash)
      key = tag.keys[0]
      value = tag.values[0]
      result += " #{key}=\"#{value}\"" 
    end
    result += "/>"
  end


end

# Mix-in of the Nokogiri XML Node Class that implements methods to convert
# nodes to a hash.
# Author: Mario "Kuroir" Ricalde (http://kuroir.com)
class Nokogiri::XML::Node
  # Convert a selected node to a Hash. It accepts a CSS3 Selector as an attribute.
  # Returns the hash.
  def to_hash(selector = 'body > *')
    hash = []
    self.css(selector).each do |node|
      hash << node.collect_nodes
    end
    # Return the hash
    hash
  end
  
  # Recursive method to collect nodes.
  # We add the children symbol always to keep the array structure constant.
  def collect_nodes
    { self.name.to_sym => self.collect_attributes.merge({:children => collect_children }) }
  end
  
  # Collect Attributes of a given node.
  def collect_attributes
    output = {}
    self.attributes.each { |name, value| output = output.merge({ name.to_sym => value.to_s.split(/\s+/) }) }
    output
  end
  
  # Priest method.
  def collect_children
    self.element_children.collect { |child| child.collect_nodes } || []
  end
end
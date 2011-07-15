#!/usr/bin/ruby
# Library that uses the Nokogiri to Hash Mixin I developed, it will convert any
# given html file to SCSS.
# Author: Mario "Kuroir" Ricalde (http://kuroir.com)
#
# 3 Oct 2010 - Added support for inline styles.

class XHTMLtoSCSS
  attr_accessor :comment_selector
  TAB = '  '
  
  def initialize(html)
    @hash = Nokogiri.HTML(html).to_hash.uniq
    @output = ''
    @nesting = 0
    @comment_selector = false
    parse
  end
  
  # Parse the array
  def parse(hash = @hash)
    hash.each do |node|
      node.each do |name, data|
        selector = build_selector(name, data)
        set_selector selector
        open_bracket
        inline_style data
        parse data[:children].uniq if data[:children].any?
        close_bracket selector
      end
    end
  end
  
  # Inline Styles.
  def inline_style(data)
    unless data[:style].nil?
      styles = data[:style].join(' ').split(';')
      styles.each do |e|
        indentation = styles.first == e.first ? '' : indent_level
        @output << indentation << e.strip << ";\n"
      end
    end
  end
  
  # Nesting Balancer.
  def nesting(int)
    @nesting += int
    @nesting = 0 if @nesting < 0
  end
  
  # Open bracket and indent.
  def open_bracket
    @output << " {\n" << indent 
  end
  
  # Unindent, Close Bracket and add selector as a comment if enabled.
  def close_bracket(selector = '')
    @output << unindent << "}"
    @output << " //#{selector}" if @comment_selector
  end
  
  # Calculate Tabs based on nesting balance.
  def indent(int = 1)
    nesting(int)
    TAB * @nesting
  end
  
  def indent_level
    TAB * @nesting 
  end
  
  # Unindent.
  # We have a -1 since the closing bracket should reach nesting 0.
  def unindent(int = -1)
    out = "\n" + TAB * (@nesting - 1)
    nesting(int)
    out
  end
  
  # Generate the Selecor, and return it for storage
  def build_selector(name, attributes)
    node_id    = attributes[:id]    ? '#' << attributes[:id].join('#')    : ''
    node_class = attributes[:class] ? '.' << attributes[:class].join('.') : ''
    name.to_s << node_id << node_class
  end
  
  def set_selector(selector)
    @output << "\n" << indent(0) << selector
  end
  
  def to_s
    @output.gsub /^\n/, ''
  end
end

# Override for this bundle
class Nokogiri::XML::Node
  # Little Override to accept only id's and classes
  def collect_attributes
    output = {}
    self.attributes.each { |name, value|
      output = output.merge({ name.to_sym => value.to_s.split(/\s+/) }) if name == 'class' or name == 'id' or name == 'style'
    }
    output
  end
end
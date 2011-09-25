#!/usr/bin/ruby
# Support for Mac only (for now)
exit unless RUBY_PLATFORM.match('darwin')
# Requeriments:
# => Ruby 1.8.7 or higher
# => Nokogiri ( gem install nokogiri)

# Get Clipboard contents.
paste = IO.popen('pbpaste', 'r+').read

# Do a simple ugly check to see if the contents of the clipboard
# are xhtml or something simlar and try to parse it.
if paste.empty? or not paste.match(/^\s{0,}\<.+\>$/)
  print paste
else
  support = ENV['TM_BUNDLE_SUPPORT'] + '/bin/'
  require 'rubygems'
  require 'nokogiri'
  require '%sNokogiri-to-Hash/nokogiri_to_hash' % support
  require '%sxhtml_to_css' % support
  print XHTMLtoSCSS.new(paste)
end
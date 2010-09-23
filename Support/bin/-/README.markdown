# Usage

    require 'rubygems'
    require 'nokogiri'
    require 'nokogiri_to_hash'
    html = '
      <div id="hello" class="container">
        <p>Hello! visit my site <a href="http://kuroir.com">Kuroir.com</a></p>
      </div>
    '
    p Nokogiri.HTML(html).to_hash
    => [{:div=>{:class=>["container"], :children=>[{:p=>{:children=>[{:a=>{:href=>["http://kuroir.com"], :children=>[]}}]}}], :id=>["hello"]}}]

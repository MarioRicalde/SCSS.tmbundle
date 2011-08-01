This is a TextMate Bundle for [SASS](http://sass-lang.com/). 

This bundle contains the grammar files for highlighting the NEW SYNTAX; the old syntax is not supported by this bundle. Sorry.

It also includes Zen CSS ( from the Zen Coding Project ); which will help you speed up your coding.


# Good News: We're compatible with SublimeText2!

# New Feature: XHTML to SCSS Converter
You can see the new feature in action in [this screencast](http://screenr.com/TZ0). Sorry for my engrish.. I need to practice more heh.

Notes about this feature:

Yo shouldn't use this feature to convert the whole XHTML to SCSS. It is meant to selectively copy and paste your XHTML to SCSS Document. In the Screencast I did a complete layout parse for the sake of demonstration. However this is a bad practice since it generates unnecessary nesting and of course bloat.

# New Feature: XHTML to SCSS Converter now uses style declarations!

See it in action! [Screencast](http://screenr.com/fP4).

#### The minimum requirements for this command to work:

- [Nokogiri](http://nokogiri.org/)
- Ruby 1.8.7 or higher (it comes by default with Snow Leopard)
- Mac OS X (No support for Windows yet. I didn't implement the clipboard method for it.)

## Preview of the Syntax Highlighter

####Kuroir's Theme
![Screen](http://dl.dropbox.com/u/4651065/kuroir-theme.png)

You can get this theme on [My Theme Repository](http://github.com/kuroir/TextMate-Kuroir-Theme)

## Installation
### Textmate (OS X)
#### With Git:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/kuroir/SCSS.tmbundle.git "SCSS.tmbundle"
    gem install nokogiri
    osascript -e 'tell app "TextMate" to reload bundles'

#### Without Git:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    wget http://github.com/kuroir/SCSS.tmbundle/tarball/master
    tar zxf kuroir-SCSS.tmbundle-*.tar.gz
    rm kuroir-SCSS.tmbundle-*.tar.gz
    mv kuroir-SCSS.tmbundle* "SCSS.tmbundle"
    gem install nokogiri
    osascript -e 'tell app "TextMate" to reload bundles'

### SublimeText2

    cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages
    git clone git://github.com/kuroir/SCSS.tmbundle.git "SCSS"

## Before Forking

If you want your patches merged to the main branch, **please** do the following:

1. If you're going to modify the Grammar, **first** edit the documented & commented "source" located in `SCSS.tmbundle / Syntaxes / source.textmate`. **then** apply it to Textmate. The reason behind this is that Textmate removes comments and indentations, making the grammar file hard to work on.
2. PULL REQUEST, so I know you want me to pull!

#### Known Issues:

- Error Highlighting sometimes fails, will need to improve the regexp.

## Credits and More:

- [Chris Eppstein](http://github.com/chriseppstein) who developed the base SCSS.tmbundle.

- This bundle has the Zen Coding Bundled within because of the scope. You can view the repository here: [Zen Coding @ google.com](http://code.google.com/p/zen-coding/).

- [doctyper](http://github.com/doctyper) 

- [Mario Ricalde](http://github.com/kuroir)

##### SCSS.tmbundle Copyright (c) 2011 Mario "Kuroir" Ricalde

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. No attribution is required by products that make use of this software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name(s) of the above copyright holders shall not be used in advertising or otherwise to promote the sale, use or other dealings in this Software without prior written authorization.

Contributors to this project agree to grant all rights to the copyright holder of the primary product. Attribution is maintained in the source control history of the product.

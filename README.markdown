This is the TextMate Bundle for [Sass](http://sass-lang.com/) SCSS Syntax. Using [SublimeText2?, click here!](https://github.com/kuroir/SCSS.tmbundle/tree/SublimeText2)

This bundle contains the grammar files for highlighting the NEW SYNTAX; the old syntax is not supported by this bundle. Sorry.

It also includes Zen CSS ( from the Zen Coding Project ); which will help you speed up your coding.


### Installation Instructions

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/kuroir/SCSS.tmbundle.git "SCSS.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'

### Extra Features
#### New Feature: XHTML to SCSS Converter
You can see the new feature in action in [this screencast](http://screenr.com/TZ0). Sorry for my engrish.. I need to practice more heh.

Notes about this feature:

Yo shouldn't use this feature to convert the whole XHTML to SCSS. It is meant to selectively copy and paste your XHTML to SCSS Document. In the Screencast I did a complete layout parse for the sake of demonstration. However this is a bad practice since it generates unnecessary nesting and of course bloat.

#### New Feature: XHTML to SCSS Converter now uses style declarations!

See it in action! [Screencast](http://screenr.com/fP4).

#### The minimum requirements for this command to work:

- [Nokogiri](http://nokogiri.org/)
- Ruby 1.8.7 or higher (it comes by default with Snow Leopard)
- Mac OS X (No support for Windows yet. I didn't implement the clipboard method for it.)

#### Installation:

    gem install nokogiri

## Before Forking

[READ THE README ON THE MASTER OLD](https://github.com/kuroir/SCSS.tmbundle/tree/master-old)

## Credits and More:

#### [Mario Ricalde](http://github.com/kuroir)
Rewrote the SCSS Grammar file and made the first release of the bundle.
#### [Charles Roper](http://github.com/charlesr)
Is the mantainer of the SublimeText2 Branch and contributed with the E-TextEditor compatibility on early stages.
#### [Chris Eppstein](http://github.com/chriseppstein)
Developed the first SCSS TextMate Bundle. Mario based his grammar of his and got a lot of feedback from him (he's SASS Core Dev)
#### [Zen Coding @ google.com](http://code.google.com/p/zen-coding/).
This bundle has the Zen Coding Bundled within because of the scope.
#### [doctyper](http://github.com/doctyper) 
Contributed with the first SublimeText2 hotfix to the original SCSS.tmbundle.

##### SCSS.tmbundle Copyright (c) 2011 Mario "Kuroir" Ricalde

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. No attribution is required by products that make use of this software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, the name(s) of the above copyright holders shall not be used in advertising or otherwise to promote the sale, use or other dealings in this Software without prior written authorization.

Contributors to this project agree to grant all rights to the copyright holder of the primary product. Attribution is maintained in the source control history of the product.

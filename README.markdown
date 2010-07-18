This is a TextMate Bundle for [SCSS](http://nex-3.com/posts/96-scss-sass-is-a-css-extension).

This bundle contains the grammar files for highlighting the NEW SYNTAX; the old syntax is not supported by this bundle. Sorry.

It also includes Zen CSS ( from the Zen Coding Project ); which will help you speed up your coding.

## Installation

### Preview

![Screen](http://u.nu/8kadd)

You can get this theme on [My Theme Repository](http://github.com/kuroir/TextMate-Kuroir-Theme)

### Textmate (OS X)

#### With Git:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    git clone git://github.com/kuroir/SCSS.tmbundle.git "SCSS.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'

#### Without Git:

    mkdir -p ~/Library/Application\ Support/TextMate/Bundles
    cd ~/Library/Application\ Support/TextMate/Bundles
    wget http://github.com/kuroir/SCSS.tmbundle/tarball/master
    tar zxf kuroir-SCSS.tmbundle-*.tar.gz
    rm kuroir-SCSS.tmbundle-*.tar.gz
    mv kuroir-SCSS.tmbundle* "SCSS.tmbundle"
    osascript -e 'tell app "TextMate" to reload bundles'

#### Known Issues:
Some highlights are messed up. Also the language needs to be refactored. Help with this would be deeply appreciated. For now we're going to be on a "hackish" branch. Till I have time to the refactoring.

#### Credits:

This bundle has the Zen Coding Bundled within because of the scope. You can view the repository here: http://code.google.com/p/zen-coding/

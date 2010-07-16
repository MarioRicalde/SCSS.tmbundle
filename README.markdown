This is a TextMate Bundle for [SCSS](http://nex-3.com/posts/96-scss-sass-is-a-css-extension).

It's not very good. If you can make it better, please do!

## Installation

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

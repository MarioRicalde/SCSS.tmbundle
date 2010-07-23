This is a TextMate Bundle for [SASS](http://sass-lang.com/). 

This bundle contains the grammar files for highlighting the NEW SYNTAX; the old syntax is not supported by this bundle. Sorry.

It also includes Zen CSS ( from the Zen Coding Project ); which will help you speed up your coding.

## Preview

####Kuroir's Theme
![Screen](http://dl.dropbox.com/u/4651065/kuroir-theme.jpg)

You can get this theme on [My Theme Repository](http://github.com/kuroir/TextMate-Kuroir-Theme)

####Blackboard Theme
![Screen](http://dl.dropbox.com/u/4651065/blackboard-theme.jpg)

####Cobalt Theme
![Screen](http://dl.dropbox.com/u/4651065/cobalt-theme.jpg)

####Dawn Theme
![Screen](http://dl.dropbox.com/u/4651065/dawn-theme.jpg)

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

#### Known Issues:

- Error Highlighting sometimes fails, will need to improve the regexp.

## Credits and More:
Thanks to [ModernMethod](http://modernmethod.com) and [Julio Capote](http://github.com/capotej/) for introducing and guiding me to the wonderful world of Ruby and SASS.

Thanks to [Chris Eppstein](http://github.com/chriseppstein) who developed the base SCSS.tmbundle.

This bundle has the Zen Coding Bundled within because of the scope. You can view the repository here: [Zen Coding @ google.com](http://code.google.com/p/zen-coding/).

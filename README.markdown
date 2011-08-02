# Choose your editor:
In this repository you'll find support for the [SASS](http://sass-lang.com/) **.scss style** syntax, just choose the editor you use and follwo the readme file there:

- [TextMate](https://github.com/kuroir/SCSS/tree/TextMate) (active)
- [SublimeText2](https://github.com/kuroir/SCSS/tree/SublimeText2) (active)
- [E-TextEditor](https://github.com/kuroir/SCSS/tree/E-TextEditor) (needs mantainer)
- Chocolat [*coming soon*]


## News

The repository now provides support for several editors! Hooray!

## Contributing

You're interested on contributing? Awesome! we need all the help we can! First lets figure out how you want to help:

#### Do you want to fix/contribute on the grammar file?
If you want to do so, please don't do it on the editor's branch! First do your changes on [grammar.source](https://github.com/kuroir/SCSS/blob/master/grammar.source) file which is located on this branch (master) and then paste the changes into the corresponding grammar file of your editor.

This is to avoid loosing documentation when the editors parse and rewrite the Grammar file and to keep them all in sync.

This means you'll need to do **two** pull requests: one on master and one on your editor.

#### Do you want to fix/contribute a Snippet/Command/Key Binding/Config?
Then do the changes on the branch of your editor; and send a pull request! The editor mantainer will review it and merge if it.

#### Want to be the mantainer of a Editor? We need you!
We're currently looking for people who can manage the following Editors:

- [E-TextEditor](https://github.com/kuroir/SCSS/tree/E-TextEditor)
- Chocolat

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
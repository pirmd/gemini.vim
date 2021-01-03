# GEMINI.VIM

This repo contains basic syntax highlighting for the [Gemini protocol](https://gemini.circumlunar.space/)'s  ̀text/gemini` format.

## INSTALLATION

The repository can be readily copied to your vim configuration directory ($HOME/.vim on unix).
You might also like to use your favorite plugin manager or vanilla Vim's [packages](https://vimhelp.org/repeat.txt.html#packages).

For example using [Vundle](https://github.com/VundleVim/Vundle.vim):
```vim
Plugin 'pirmd/gemini.vim'
```

This plugin enables by default `text/gemini` type for files with either `.gemini` or `.gmi` extension.

## FORMAT

Format for `text/gemini`is pretty straightforward, current highlighting supports:
```
# This would be an H1
## This would be an H2
### This would be an H3

=> gemini://example.org/
=> gemini://example.org/ An example link
=> gemini://example.org/foo Another example link at the same host
=>gemini://example.org/bar Yet another example link at the same host
=> foo/bar/baz.txt  A relative link
=>  gopher://example.org:70/1 A gopher link
=> https://github.com/pirmd/gemini.vim I'm a link to useful resources.

Preformatted toggle lines start and end with lines containing three back-ticks (```)

> This line will show as a quote

* This is a list item.
* This is another list item.

Anything else is just normal paragraph text
```

## CONTRIBUTION
If you feel like to contribute, just follow github guidelines on
[forking](https://help.github.com/articles/fork-a-repo/) then [send a pull
request](https://help.github.com/articles/creating-a-pull-request/)


[modeline]: # ( vim: set fenc=utf-8 spell spl=en: )


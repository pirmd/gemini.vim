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

=> https://github.com/pirmd/gemini.vim I'm a link to useful resources.

> This line will show as a block-quote

* This is the first list item.
* This is another list item.

Pre-formatted blocks start and end with lines containing three back-ticks (```)

Anything else is just normal paragraph text
```

## CONTRIBUTION
If you feel like to contribute, just follow github guidelines on
[forking](https://help.github.com/articles/fork-a-repo/) then [send a pull
request](https://help.github.com/articles/creating-a-pull-request/)


[modeline]: # ( vim: set fenc=utf-8 spell spl=en: )


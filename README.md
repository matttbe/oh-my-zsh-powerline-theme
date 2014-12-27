oh-my-zsh-powerline-theme
=========================

oh-my-zsh Powerline style Theme

Preview
-------

![Preview](https://raw.githubusercontent.com/matttbe/oh-my-zsh-powerline-theme/master/preview.png)

Quick installation
------------------

* Oh-My-ZSH:

```
curl -L http://install.ohmyz.sh | sh
```

* Fonts:

```
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
```

* Theme:

```
wget https://raw.githubusercontent.com/matttbe/oh-my-zsh-powerline-theme/master/powerline.zsh-theme -O ~/.oh-my-zsh/themes/powerline.zsh-theme
wget https://raw.githubusercontent.com/matttbe/oh-my-zsh-powerline-theme/master/zshrc -O ~/.zshrc
```

Set Up
------

1. Clone the repository.

2. Create a symlink of **powerline.zsh-theme** in **.oh-my-zsh/themes/**. You can use the **install_in_omz.sh** file:

    ```
    ./install_in_omz.sh
    ```

3. Configure the theme in your **.zshrc** file:

    ```
    ZSH_THEME="powerline"
    ```

More options
------------

All options must be overridden in your **.zshrc** file.

By default, at the right of the powerline are displayed the date and the time.
If you don't want date or time, you can choose what you want to display:

```
POWERLINE_RIGHT_B="date replacement"
```

Or if you don't want to display anything:

```
POWERLINE_RIGHT_B="none"
```

If you want to display date next to time:
```
POWERLINE_RIGHT_A="date"
```

If you want to display exit-code of last command next to time:
```
POWERLINE_RIGHT_A="exit-status"
```

If you want to display date or non-zero-exit-code of last command next to time:
```
POWERLINE_RIGHT_A="mixed"
```

If you want to display a custom text next to time:
```
POWERLINE_RIGHT_A="Your very best text"
```

If you want to change the date format to what you want:
```
POWERLINE_DATE_FORMAT="%D{%d-%m}"
```

If you don't want to display your username (the green or red (root) colors are still there):

```
POWERLINE_HIDE_USER_NAME="true"
```

If you don't want to display your hostname (the green or red (root) colors are still there):

```
POWERLINE_HIDE_HOST_NAME="true"
```

If you want to hide git prompt status (new files, modified files, unmerged files, etc):
```
POWERLINE_HIDE_GIT_PROMPT_STATUS="true"
```

If you want to hide the right hand side prompt completely:
```
POWERLINE_DISABLE_RPROMPT="true"
```

If you don't want the blank line before the prompt:

```
POWERLINE_NO_BLANK_LINE="true"
```

If you want full path:

```
POWERLINE_FULL_CURRENT_PATH="true"
```

If you want git info on right instead of left:

```
POWERLINE_SHOW_GIT_ON_RIGHT="true"
```

If you want to tell if you are in a remote SSH session:

```
POWERLINE_DETECT_SSH="true"
```

Also you can change the icons of GIT info, default values are:
```
POWERLINE_GIT_CLEAN="%F{green}✔%F{white}"
POWERLINE_GIT_DIRTY="%F{red}✘%F{white}"
POWERLINE_GIT_ADDED="%F{green}✚%F{white}"
POWERLINE_GIT_MODIFIED="%F{cyan}✹%F{white}"
POWERLINE_GIT_DELETED="%F{red}✖%F{white}"
POWERLINE_GIT_UNTRACKED="%F{yellow}✭%F{white}"
POWERLINE_GIT_RENAMED="%F{cyan}➜%F{white}"
POWERLINE_GIT_UNMERGED="%F{cyan}═%F{white}"
```

Requirements
------------

* Vim Powerline patched font: Download your favorite one on [Lokaltog/powerline-font](https://github.com/Lokaltog/powerline-fonts).
* Z shell (zsh): See [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for more info.
* Make sure terminal is using 256-colors mode with `export TERM="xterm-256color"`.

Fonts
-----
To easily install all powerline fonts, simply launch all theses commands ([src](http://askubuntu.com/a/283909)):

```
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
```

Contribute
----------

### How to contribute

* Create an issue if you find a bug or if you want a new feature.
* Fork the project and pull request your very best feature.

### Thanks

* [shouze](https://github.com/shouze)
* [stephpy](https://github.com/stephpy)
* [Ph3nol](https://github.com/Ph3nol)
* [gbin](https://github.com/gbin)
* [krischer](https://github.com/krischer)
* [Arthraim](https://github.com/Arthraim)
* [itszero](https://github.com/itszero)
* [adrienbrault](https://github.com/adrienbrault)
* [mkraemer](https://github.com/mkraemer)
* [wujtruj](https://github.com/wujtruj)
* [Flavius Aspra](http://flavius.github.com/)

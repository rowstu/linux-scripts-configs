# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# install screenfetch for the Arch logo and system output
screenfetch

# a little inspiration...
echo "

  God grant me the serenity to accept the things I cannot change,
  the courage to change the things I can, 
  and the wisdom to know the difference. -- Reinhold Niebuhr

  The unexamined life is not worth living. -- Socrates

  The impediment to action advances action. What's in the way becomes
  the way. -- Marcus Aurelius

  Smile, breathe and go slowly. -- Thich Nhat Hanh

"

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

if [[ `uname` = Linux ]]
then
    alias ls='ls --color'
    alias ll='ls -al --color'
else
    alias ll='ls -al'
fi

PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\] \$ > '

PATH="~/bin:$PATH"
WWW_HOME="https://www.duckduckgo.com"
PULSE_LATENCY_MSEC=60
EDITOR='/usr/bin/vim'
VISUAL='/usr/bin/vim'
export PYTHON2DOCS=/usr/share/doc/python2/html/
export PYTHONDOCS=/usr/share/doc/python/html/

if [[ -e `which vim` ]]
then
    alias vi="`which vim`"
fi

#storing command history across terminals
shopt -s histappend
HISTCONTROL=ignoreboth:erasedups
HISTFILESIZE=5000
HISTIGNORE='&:ls:ll:"ls -altr":"ls -alt":la:l:pwd:cd ~:cd -:cd..:[bf]g:exit:h:history:ps ax:mocp:mm:m'


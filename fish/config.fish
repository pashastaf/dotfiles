set -x EDITOR nvim
set fish_greeting
#set -x MANPAGER "nvim -c 'set ft=man' -"
set TERM "kitty"



if status is-interactive
  # Запуск окружения
  if [ -t 0 -a (tty) = "/dev/tty1" -a -z "$DISPLAY" -a "$USER" != "root" ]
     Hyprland
  end

  # Установка приглашения для интерактивного режима
  set -x PS1 "[\u@\h \W]\$ "
  
  # Не писать sudo
  function sudo_cmd
      if contains "pacman poweroff reboot" $argv[1]
          sudo $argv
      else
        $argv
      end
  end

  # Алиасы для интерактивного режима
  #alias r 'ranger --choosedir="$HOME/.rangerdir"; cd (cat $HOME/.rangerdir)'
  alias r "nnn -e"
  alias x "exit"
  alias ll='exa -al --color=always --group-directories-first' # my preferred listing
  alias la='exa -a --color=always --group-directories-first'  # all files and dirs
  alias ls='exa -lh --color=always --group-directories-first --git'  # long format
  alias tree='exa -aT --color=always --group-directories-first' # tree listing  alias cp "cp -v"
  alias ln "ln -v"
  alias mv "mv -v"
  alias rm "rm -v"

  # Настройки для интерактивного режима
  set -x FZF_DEFAULT_OPTS "--ansi --preview='cat {}'"

  # Функции для интерактивного режима
  function greet
    echo "Hello, $USER!"
  end
end
#fish_config theme choose "Rosé Pine"
starship init fish | source
#neofetch
#rxfetch

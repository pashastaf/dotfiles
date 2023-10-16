if status is-interactive
  # Запуск окружения
  if [ -t 0 -a (tty) = "/dev/tty1" -a -z "$DISPLAY" -a "$USER" != "root" ]
      startx
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
  alias r "ranger"
  alias ll "ls -alF"
  alias x "exit"
  alias ls "exa -lh --git"
  alias tree "exa --tree"
  alias htop "htop -t"
  alias cp "cp -v"
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

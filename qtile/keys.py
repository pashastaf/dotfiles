from libqtile.config import Click, Drag, KeyChord, Key
from libqtile.command import lazy
from libqtile.lazy import lazy

from os.path import expanduser

mod = "mod4"
terminal = "kitty"

keys = [
    # Управление фокусом
    Key([mod], "left", lazy.layout.left(), desc="Move focus to left"), # Фокус влево
    Key([mod], "right", lazy.layout.right(), desc="Move focus to right"), # Фокус вправо
    Key([mod], "down", lazy.layout.down(), desc="Move focus down"), # Фокус вниз
    Key([mod], "up", lazy.layout.up(), desc="Move focus up"), # Фокус вверх
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"), # Переключить фокус

    # Перемещение окон
    Key([mod, "shift"], "left", lazy.layout.shuffle_left(), desc="Move window to the left"), # Переместить окно влево
    Key([mod, "shift"], "right", lazy.layout.shuffle_right(), desc="Move window to the right"), # Переместить окно вправо
    Key([mod, "shift"], "down", lazy.layout.shuffle_down(), desc="Move window down"), # Переместить окно вниз
    Key([mod, "shift"], "up", lazy.layout.shuffle_up(), desc="Move window up"), # Переместить окно вверх

    # Изменение размера окна
    Key([mod, "control"], "left", lazy.layout.grow_left(), desc="Grow window to the left"), # Увеличить окно влево
    Key([mod, "control"], "right", lazy.layout.grow_right(), desc="Grow window to the right"), # Увеличить окно вправо
    Key([mod, "control"], "down", lazy.layout.grow_down(), desc="Grow window down"), # Увеличить окно вниз
    Key([mod, "control"], "up", lazy.layout.grow_up(), desc="Grow window up"), # Увеличить окно вверх
    Key([mod, "control"], "n", lazy.layout.normalize(), desc="Reset all window sizes"), # Вернуть все взад
    # Плавающий режим для окна
    Key([mod, "shift"], "space", lazy.window.toggle_floating()),
    # Запуск приложений
    Key([mod], "Return", lazy.spawn(terminal)),
    Key([mod], "d", lazy.spawn("rofi -show drun")),
    Key([mod], "n", lazy.spawn("nemo")),
    Key([mod, "control"], "c", lazy.spawn('rofi -modi "clipboard:greenclip print" -show clipboard -run-command')),
    # Запуск десктоп утилит
    Key([mod, "shift"], "s", lazy.spawn("escrotum -sC")),
    Key([], "Print", lazy.spawn("escrotum")),
    Key([mod, "shift"], "c", lazy.spawn("xcolor -s -S 16")),
    Key([mod, "shift"], "f", lazy.spawn(expanduser("~/scripts/dialect.sh"), shell=True)),
    
    # Переключение между макетами
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    # Закрыть окно
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    # Перезагрузить конфиг
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    # Выйти из Qtile
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    # Выполнить команды (типо встроенное dmenu)
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),

    Key([],"XF86AudioRaiseVolume", lazy.spawn("amixer -D pulse sset Master 10%+")),
    Key([],"XF86AudioLowerVolume", lazy.spawn("amixer -D pulse sset Master 10%-")),
    Key([],"XF86AudioMute", lazy.spawn("amixer -D pulse sset Master toggle")),
    Key([mod, "shift"], "x", lazy.spawn("poweroff")),
    # Раскладка клавиатуры
    #Key(["alt"], "shift", lazy.widget["keyboardlayout"].next_keyboard(), desc="Next keyboard layout."),

]

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]



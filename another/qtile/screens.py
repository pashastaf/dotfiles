from libqtile.config import Screen
from libqtile import layout, bar, widget, hook

colors =  [
        ["#292d3e", "#292d3e"], # color 0
        ["#A8A8A8", "#A8A8A8"], # color 1
        ["#f99db3", "#f99db3"], # color 2
        ["#B9BCDF", "#B9BCDF"], # color 3
        ["#F98DA6", "#F98DA6"], # color 4
        ["#ffffff", "#ffffff"], # color 5
        ["#C7CAEF", "#C7CAEF"], # color 6
        ["#F9A9BC", "#F9A9BC"], # color 7
        ["#b79feb", "#b79feb"], # color 8
        ["#bbebca", "#bbebca"], # color 9
        ["#DCDEFC"]] # color 10



screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.GroupBox(borderwidth=1, # Толщина рамки
                    highlight_method='block', # Метод выделения активного воркспейса
                    block_highlight_text_color='#263238',# Цвет текста активного воркспейса
                    this_current_screen_border="#f9f9f9", # Цвет фона активного воркспейса
                    rounded=True,
                    ), # Иконки воркспейсов
                widget.Prompt(), # Виджет выполнения команд
                widget.WindowName(max_chars=30),# Имя окна
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },               
                    name_transform=lambda name: name.upper(),
                ),

                
                widget.CheckUpdates(distro='Arch',
                display_format='UPDATES  {updates}',
                no_update_string='UPDATES  0'), # Виджет обновлений пакетов
                widget.Spacer(length=20), # Виджет пробела
                widget.Battery(format = "{percent:2.0%}"),
                #widget.TextBox(text="", padding=0),
                #widget.PulseVolume(padding=5), # Виджет громкости пульсы
                widget.Spacer(length=10), # Виджет пробела

                #widget.KeyboardLayout(configured_keyboards=['us', 'ru'], update_interval=1),
                
                #widget.LaunchBar(progs=[('', 'scrot -d 3',)], icon_size='15px'),
                #widget.Spacer(length=10), # Виджет пробела
                
                widget.Systray(), # Трэй, не работает в вялом, нужно будет юзать widget.StatusNotifier
                widget.Spacer(length=25), # Виджет пробела
                
                widget.Clock(format="%Y-%m-%d %a   %H:%M %p", padding=10), # Время и дата
                widget.Spacer(length=10), # Виджет пробела
                
                widget.QuickExit(default_text=''), # Кнопка выключения
            ],
            30, # Высота панели
            background = "#1f1f28",
            # border_width=[2, 0, 2, 0],  # Draw top and bottom borders
            # border_color=["ff00ff", "000000", "ff00ff", "000000"]  # Borders are magenta
        ),
        # You can uncomment this variable if you see that on X11 floating resize/moving is laggy
        # By default we handle these events delayed to already improve performance, however your system might still be struggling
        # This variable is set to None (no cap) by default, but you can set it to 60 to indicate that you limit it to 60 events per second
        # x11_d0rag_polling_rate = 60,
    ),
]



from libqtile import layout
from libqtile.config import Group, Key
from libqtile.lazy import lazy
from keys import keys
mod = "mod4"

@lazy.function
def window_to_prev_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i - 1].name)

@lazy.function
def window_to_next_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i + 1].name)

groups = [Group(i) for i in "123456789"]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
            #Key([mod], "[", lazy.screen.prev_group(skip_empty=False)), # cycle left
            #Key([mod], "]", lazy.screen.next_group(skip_empty=False)), #cycle right
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            #     desc="move focused window to group {}".format(i.name)),
        ]
    )
 #groups = [
 #    ScratchPad("scratchpad", [
 #        DropDown(
 #            'term',
 #            ['kitty'],
 #            height = 0.5,
 #            width = 0.5,
 #            x = 0.25,
 #            y = 0.25,
 #            on_focus_lost_hide = False,
 #            opacity = 0.75,
 #            warp_pointer = True,
 #        ),
 #        DropDown(
 #            'typora',
 #            ['/usr/bin/typora'],
 #            height = 0.8,
 #            width = 0.8,
 #            x = 0.1,
 #            y = 0.1,
 #            on_focus_lost_hide = False,
 #            opacity = 0.95,
 #            warp_pointer = True,
 #        ),
 #        DropDown(
 #            'office',
 #            ['onlyoffice-desktopeditors'],
 #            height = 0.85,
 #            width = 0.85,
 #            x = 0.085,
 #            y = 0.02,
 #            on_focus_lost_hide = False,
 #            opacity = 0.95,
 #            warp_pointer = True,
 #        ),
 #    ]),
 #]    



layouts = [
    layout.Columns(
        border_focus = "#f9f9f9", 
        border_normal = "#263238", 
        border_width=1, 
        margin = 7
    ),
    # layout.Max(),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.Tile(
    #     margin=8,
    #     margin_on_single=False,
    #     border_on_single=False,
    #     border_width=2,
    #     ratio=0.55,
    #     shift_windows=True,
    # ),
    # layout.MonadWide(),
    # layout.RatioTile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]


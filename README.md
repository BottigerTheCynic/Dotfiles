# Sway-files
My Personal Dotfiles for SwayWM
# Preview

<img width="1366" height="768" alt="20260728_15h16m21s_grim" src="https://github.com/user-attachments/assets/d8060169-8146-43cc-80d6-e8e00f67c2a4" />

# Note
My Sway Config does have some Gentoo related code and it is safe to remove and replace those lines. The Config may have some modules for laptops, especially in the waybar config and the dunst config however, you can remove those lines and configure it the way how you like it!

# Packages/Tools Included & Required
- [Alacritty](https://github.com/alacritty/alacritty) - Gpu Accelerated Terminal
- [Btop++](https://github.com/aristocratos/btop) - System Monitor
- [gtk.30](https://github.com/gooroom/gtk3) - Global Color Schemes
- [j4-dmenu-desktop](https://github.com/enkore/j4-dmenu-desktop) - Faster Fork Of Dmenu
- [SwayWm](https://github.com/swaywm/sway) - I3 Compatible WM
- [SwayBg](https://github.com/swaywm/swaybg) - Wallpaper Manager
- [Waybar](https://github.com/Alexays/Waybar) - Wayland Status Bar
- [Dunst](https://github.com/dunst-project/dunst) - Notification daemon

# Installation 
`git clone https://github.com/BottigerTheCynic/dotfiles.git ~/dotfiles
cd ~/dotfiles`

`mkdir -p ~/.config # If you haven't`

`cp -r alacritty ~/.config/
cp -r btop ~/.config/
cp -r gtk-3.0 ~/.config/
cp -r j4-dmenu-desktop ~/.config/
cp -r sway ~/.config/
cp -r waybar ~/.config/
cp -r dunst ~/.config/
`

# My Philosophy

The reason why I chose Sway is because of its Wayland support, unlike i3, which uses X11 and is outdated with a lot of security vulnerabilities, including unauthorized monitoring of a remote server where an attacker can eavesdrop on keyboard/mouse activity.

There is more to read from in [CVE-2020-25697](https://www.cve.org/CVERecord?id=CVE-2020-25697). The tools I chose were very specific, starting off with Alacritty. Alacritty is a GPU-accelerated terminal with a whole lot of customizations inside of the TOML config. It's designed as a lightweight terminal emulator that integrates with other applications instead of reimplementing their functionality. It manages to provide sets of flexible features with high performance, such as featuring vi/Vim mode for navigation, scrollback buffer search, and regex hints. I chose Alacritty since it's simple, fast, and dependent on the GPU, meaning it can render graphics more efficiently by offloading tasks from the CPU to the GPU, especially during high-load scenarios. Btop++ is a resource monitor that shows usage and stats for processors, memory, disks, networks, and processes. I chose Btop++ because of its visually rich color and font on the monitor and because it is very easy to navigate with the built-in keybinds. I use GTK 3.0, which is a toolkit for creating graphical user interfaces widely used in Linux and Unix-like operating systems. It includes libraries that allow developers to build applications with rich graphical elements and supports features like themes and accessibility. I use it for setting color schemes globally instead of having to individually set a specific color scheme for all of my applications. I chose j4-dmenu because it is inspired by i3-dmenu-desktop. Like i3-dmenu-desktop, j4-dmenu-desktop offers optional integration with i3wm, Sway, and Flatpak name correction. My wallpaper manager is SwayBg, which is a lightweight wallpaper manager that sets JPGs & PNGs on your display/monitor. I use Waybar because it's a lightweight Wayland status bar with a lot of customization involving modules, etc. I use a lightweight notification daemon that only notifies me about my battery, and Dunst has been really helpful and easy to configure. I use a Serial Experiments Lain wallpaper because of how I think I relate a lot to Lain because of her involvement in technology and computers inside the Wired.

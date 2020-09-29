# Writing duckyScript

[Main Page](/README.md) | [Buy duckyPad](/purchase_information.md)

------

## Overview

duckyScript is a simple scripting language developed for [USB Rubber Ducky](https://shop.hak5.org/products/usb-rubber-ducky-deluxe), which can `"inject keystrokes at superhuman speeds"` to `"install backdoors, exfiltrate documents, or capture credentials"`. This is known as [BadUSB attack](https://arstechnica.com/information-technology/2014/07/this-thumbdrive-hacks-computers-badusb-exploit-makes-devices-turn-evil/).

However, there is no reason why we can't use duckyScript to do something productive! After all, it's just for automating keypresses!

This guide gives an concise overview of duckyScript. For more detailed information, [see this page](https://github.com/hak5darren/USB-Rubber-Ducky/wiki/Duckyscript).

## Syntax

* One command per line. **`Each line has a 256 character limit!`**

* 1000 milliseconds = 1 second

### REM

`REM` is comment, any line starting with `REM` is ignored.

### DEFAULTDELAY

`DEFAULTDELAY` specifies how long (in milliseconds) to wait between each **`line of command`**.

If unspecified, `DEFAULTDELAY` is 20ms in duckyPad.

```
DEFAULTDELAY 100
REM duckyPad will wait 100ms between each subsequent command
```

### DEFAULTCHARDELAY

⚠️ This command only works duckyPad! (for now)

`DEFAULTCHARDELAY` specifies how long (in milliseconds) to wait between each **`key stroke`**.

If unspecified, `DEFAULTCHARDELAY` is 20ms in duckyPad.

```
DEFAULTCHARDELAY 50
REM duckyPad will wait 50ms between pressing each key
```

### DELAY

`DELAY` creates a momentary pause in script execution. Useful for waiting for UI to catch up.

```
DELAY 1000
REM waits 1000 milliseconds, or 1 second
```

### STRING

`STRING` types out whatever after it **`as-is`**.

```
STRING Hello world!!!
REM types out "Hello world!!!"
```

### REPEAT

Repeats the last command **`n`** times.

```
STRING Hello world
REPEAT 10

REM types out "Hello world!!!" 11 times (1 original + 10 repeats)
```

### Modifier Keys

duckyScript also supports a whole bunch of modifier keys:

```
CTRL
SHIFT
ALT
WINDOWS
ESC
ENTER
UP
DOWN
LEFT
RIGHT
SPACE
BACKSPACE
TAB
CAPSLOCK
PRINTSCREEN
SCROLLLOCK
PAUSE
BREAK
INSERT
HOME
PAGEUP
PAGEDOWN
DELETE
END
F1
F2
F3
F4
F5
F6
F7
F8
F9
F10
F11
F12
VOLUP
VOLDOWN
MUTE
MENU (the `right click` key on windows keyboard that nobody uses)
```

Those modifier keys can be used on their own:

`WINDOWS`

...or can be combined with a letter to form shortcuts:

`WINDOWS s`

...or can be combined with other modifier keys:

`WINDOWS SHIFT s`

* Type the key names as-is in **`ALL CAPS`**.

* **`UP TO 3 KEYS`** can be pressed simultaneously.

* On macOS, `Command` is `WINDOWS` key, `Option` is `ALT` key.

* Use `WINDOWS` for `Meta`, `Command`, `Search` keys on other operating systems.

* That's pretty much it!

## Examples

As you will see, those are very straightforward and simple.

Check out the [sample profiles](https://github.com/dekuNukem/duckyPad/tree/master/sample_profiles) for more examples.

### Open a certain webpage on windows

```
WINDOWS r
DELAY 400
STRING https://www.youtube.com/watch?v=dQw4w9WgXcQ
ENTER
```

### Save a webpage then close it

```
CONTROL s
DELAY 600
ENTER
DELAY 600
CONTROL w
```

## Questions or Comments?

Please feel free to [open an issue](https://github.com/dekuNukem/duckypad/issues), ask in the [official duckyPad discord](https://discord.gg/4sJCBx5), DM me on discord `dekuNukem#6998`, or email `dekuNukem`@`gmail`.`com` for inquires.
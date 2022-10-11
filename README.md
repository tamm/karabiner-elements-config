# karabiner-elements-config

This is my Karabiner-elements config, it sets up media keys to work with Spotify, as well as the touch bar controls.

# How to use this config

- clone this repo into your `~/.config/karabiner` folder

  ⚠️ This will replace your Karabiner-elements config because that's how I would do this if I need it on another computer myself, if you **don't** want this please manually copy things from the repo instead. Read the [`karabiner.json`](./karabiner.json) to figure out the parts which aren't code and make sure you place the config file in the `complex_modifications` folder.

  ```
  git clone git@github.com:tamm/karabiner-elements-config.git ~/.config/karabiner
  ```

- disable mac control of media keys

  ```
  launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist
  ```

- if you didn't copy the whole config, add `basic modifications` for the "TouchBarUserDevice (Apple Inc.)" target device as follows:

  - _rewind_ -> f7
  - _play_or_pause_ -> f8
  - _fast_forward_ -> f9

# Fine print

Seeing as I needed to do a couple of things different from others who have done this I hope it works for you, but I don't make any guarantees. If you make improvements feel free to tell me!

You can put the AppleScript files anywhere you'd like, but I needed to reference them with `~/.config/karabiner/` because my Karabiner-elements defaults to `/` instead of the folder as described by others.

I got this idea from [Remy Sharp's blog](https://remysharp.com/2020/04/06/controlling-the-control-strip-make-play-control-spotify) and couldn't have made this work without [Ralph Callaway's repo Mac-Spotify-Play-Pause-Lock](https://github.com/ralphcallaway/Mac-Spotify-Play-Pause-Lock). I also got some inspiration from [this answer at StackOverflow](https://stackoverflow.com/a/49730135).

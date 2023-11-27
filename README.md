<h1 align="center">MacUp</h1>

<p align="center">
MacUp is a declarative dotfile configuration forked from the original 
<a href="https://github.com/juliantellez/up" target="_blank">UP project</a> created by <a href="https://github.com/juliantellez" target="_blank">Julian Tellez</a>.
Its main goal is to increase your productivity by making it trivial to install the most common tools developers tend to use<sup>*</sup>.
Get your MAC UP and running in no time, start up your machine with one command!
</p>

- [Install](#install)
- [Base Tools](#base-tools)
- [Shell](#shell)
- [Languages](#languages)
- [CLI: Utilities](#cli-utilities)
- [CLI: Tools](#cli-tools)
- [Containers](#containers-optional)
- [Browsers](#browsers-optional)
- [Editors](#editors)
- [Productivity](#productivity)
- [Communication](#communication-optional)
- [Configuration](#configuration-files)
- [Acknowledgements](#acknowledgements)
- [FAQ](#faq)

# Install

Copy the following snippet into your current terminal and follow the instructions

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/mikeguta/macup/master/install.sh)"
```

<p align="center">
  <a href="https://github.com/mikeguta/macup" target="_blank">
    <img alt="MacUp step-by-step wizard" src="./assets/up_cli.png" width="500">
  </a>
</p>
NOTE: After the initial prompt, the majority of dependencies do not require prompts (the first 5-7 minutes). Optional and interactive dependencies are clustered towards the end of the installation (the final 3-5 minutes).

# Base Tools
*You can't do much without these tools*
- [Xcode](https://developer.apple.com/xcode/): Installs necessary Command Line Tools.
- [Homebrew](https://brew.sh/): The missing package manager for macOS (or Linux).
- [git](https://github.com/git/git): A free and open source distributed version control system (included in XCode CL Tools)
- [gh](https://cli.github.com/): GitHub CLI brings GitHub to your terminal. Free and open source.


# Shell
*Popular combination of Oh-My-Zsh! + PowerLevel 10k + iTerm2 + Fonts*
- [ohmyz](https://ohmyz.sh/): A delightful, open source, community-driven framework for managing your ZSH configuration.
- [iterm2](https://www.iterm2.com/): A replacement for Terminal.
- [powerlevel10k](https://github.com/romkatv/powerlevel10k): Popular theme for ZSH.
- [zsh syntax highlight](https://github.com/zsh-users/zsh-syntax-highlighting): Enables highlighting of commands whilst they are typed.
- [zsh autocomplete](https://github.com/zsh-users/zsh-completions): Completion scripts that are not available in Zsh yet.
- [font-hack-nerd-font](https://github.com/ryanoasis/nerd-fonts): Developer targeted fonts (ideal for Terminal).
- [font-jetbrains-mono](https://github.com/JetBrains/JetBrainsMono): JetBrains Mono fonts.


# Languages
*These are absolute musts IMO for web development*
- [nvm](https://github.com/nvm-sh/nvm): allows you to quickly install and use different versions of node via the command line.
- [Nodejs](https://nodejs.org/en/): current LTS version installed by default.
- [Python](https://github.com/python/cpython): An ideal language for scripting and rapid application development in many areas on most platforms.

# CLI: Utilities
*A selection of the most popular CLI utilities for general use*
- [fzf](https://github.com/junegunn/fzf): General-purpose command-line fuzzy finder.
- [jq](https://github.com/stedolan/jq): A lightweight and flexible command-line JSON processor.
- [htop](https://github.com/hishamhm/htop): An interactive process viewer.
- [the_silver_searcher](https://github.com/ggreer/the_silver_searcher): A code searching tool similar to ack, with a focus on speed.
- [tree](https://linux.die.net/man/1/tree): A depth indented listing of files.
- [wget](https://github.com/jay/wget): A free utility for non-interactive download of files from the Web.
- [z](https://github.com/rupa/z): Tracks your most used directories, based on 'frecency'.

# CLI: Tools
*A selection of the most popular CLI tools for Cloud Development (personal preference for AWS)*
- [awscli](https://github.com/aws/aws-cli): Unified command line interface to Amazon Web Services.
- [mas](https://github.com/mas-cli/mas): CLI for the Mac App Store.
- [terraform](https://github.com/hashicorp/terraform): Tool for building, changing, and versioning infrastructure safely and efficiently.
- [ngrok](https://ngrok.com/): A multiplatform tunnelling and reverse proxy.
- [vagrant](https://www.vagrantup.com/): Development Environments Made Easy.

# Containers (Optional)
*A personally favourite combination of CLI & GUI to support container development*
- [colima](https://github.com/abiosoft/colima): Colima - container runtimes on macOS (and Linux) with minimal setup.
- [docker](https://github.com/docker/cli): A self-sufficient runtime for containers.
- [docker-compose](https://docs.docker.com/compose/reference/): Define and run multi-container applications with Docker.
- [podman-desktop](https://podman-desktop.io/): Free and permissive GUI to manage containers (an alternative to Docker Desktop)

# Browsers (optional)
*The most popular 3rd party browsers on MacOS*
- [firefox](https://www.mozilla.org/en-US/firefox/): Free and open-source web browser developed by the Mozilla Foundation.
- [google-chrome](https://www.google.com/chrome/): A cross-platform web browser developed by Google.

# Editors
*Favourite IDE for Modern Web Development*
- [visual-studio-code](https://code.visualstudio.com/): Code editor redefined and optimized for building and debugging modern web and cloud applications. 

# Productivity
- [spectacle](https://www.spectacleapp.com/): Move and resize windows with ease.
- [trailer](https://ptsochantaris.github.io/trailer/): Track pull requests and issues across repositories.

# Communication (optional)
*The vast majority of organizations will use at least one of these for instant messaging*
- [slack](https://slack.com/): Brings all your communication together.
- [zoom](https://www.zoom.us/): Video communication and virtual meeting platform.
- [microsoft-teams](https://www.microsoft.com/en/microsoft-teams/group-chat-software/): Meet, chat, call, and collaborate in just one place.

# Configuration files
- [iterm](./config/iterm.json): iTerm2 profile (with Hack Nerd Font and colours)
- [.p10k.sh](./config/.p10k.sh): PowerLevel 10k Configuration (assumes Hack Nerd Font is used).
- [.zshrc](./config/.zshrc): ZSH config with Oh-My-Zsh!, PowerLevel10k & other plugins.

# GIT configuration
To help with GIT configuration, this package:
* prompts and sets `user.name` and `user.email` (if not already found in `git config`)
* generates SSH key pair, if not already there, with a default name (should you wish/need to use SSH)
* runs `gh auth login` which allows you to authenticate the GIT CLI with GitHub.com via the Web Browser (interactively)
*Note: you can subseequently authenticate with other hosts by any other means if the above is not suitable.*

# Mac Configuration
**IMPORTANT:** *This is very optional. I know a lot of devs prefer something like this, but it's a matter of extremely personal taste.*

Please read the [configurations](./dependencies/mac.sh) before applying them. Note that you can always reset them by typing:

```sh
defaults delete <domain>; # sets domain to default settings
killall <domain>; # restarts domain
```
For example:
```sh
defaults delete Dock;
kill all Dock;
```

# Iterm Profile
MacUp uses a dynamic profile [see](https://www.iterm2.com/documentation-dynamic-profiles.html). To enable it do:

```
Iterm2 >
    Preferences >
        Profiles > MacUp Config >
            Other Actions > Set as Default
```

<p align="center">
  <a href="https://github.com/mikeguta/macup" target="_blank">
    <img alt="iTerm2 set configuration as default" src="./assets/up_iterm_config.gif" width="500">
  </a>
</p>

# Color Presets

Color presets can be downloaded by following [this url](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/README.md). Alternatively you can follow the description below and import them from the color_presets folder.

```
Iterm2 > Preferences > Profiles > Colors > Color Presets > Import
```

# Acknowledgements
These configs and dotfiles stand on the shoulders of the following giants:

- https://github.com/juliantellez/up
- https://github.com/minamarkham/formation
- https://github.com/mathiasbynens/dotfiles
- https://github.com/kevinSuttle/macOS-Defaults

# FAQ

**Q:** Have you tested these dotfiles?
**A:** Yes, currently tested on:
  - macOS Monterey - 12.7.1

# Footnotes
<sup>*</sup>This list is somewhat opinionated and assumes you have permission to install all the tools in it. I would hope to add more support for more tools people generally use.
# Ansible Playbook for Mac Setup
Ansible Playbook that I created (read: shamelessly ripped off and modified to my own liking) from
[Jeff Geerling](https://github.com/geerlingguy)'s similar playbook that is linked below

This is a one stop shop for setting up my Brew, Brew Cask, ChefDk, App Store and other development tools as I see fit

*Reference*:

  - [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)

## Installation

  1. Ensure Apple's command line tools are installed (`xcode-select --install` to launch the installer).
  2. [Install Ansible](http://docs.ansible.com/intro_installation.html).
  3. Clone this repository to your local drive.
  4. Install latest JDK 1.8
  5. Run `ansible-playbook main.yml -K` inside this directory. Enter your account password when prompted.

### Ansible Installation
```bash
sudo easy_install pip
sudo pip install ansible
```
> Note: If some Homebrew commands fail, you might need to agree to Xcode's license or fix some other Brew issue. Run `brew doctor` to see if this is the case.

### Homebrew Application Installation

#### brew apps:
  - ansible
  - ansible-lint
  - awscli
  - bash
  - bash-completion
  - boost
  - chromedriver
  - curl
  - ddrescue
  - gdbm
  - gettext
  - git
  - git-secrets
  - go
  - htop-osx
  - icu4c
  - jq
  - libffi
  - libyaml
  - mas
  - maven
  - mplayer
  - mysql
  - nmap
  - node@6
  - nvm
  - oniguruma
  - openssh
  - openssl
  - openssl@1.1
  - putty
  - python
  - readline
  - selenium-server-standalone
  - ssh-copy-id
  - sqlite
  - thefuck
  - tree
  - watch
  - wget
  - xz
  - youtube-dl

#### brew cask apps:
  - [1password](https://1password.com/)
  - [adobe-air](https://get.adobe.com/air/)
  - [beyond-compare](https://www.scootersoftware.com/)
  - [calibre](https://calibre-ebook.com/)
  - [chefdk](https://downloads.chef.io/chefdk)
  - [cleanmymac](https://macpaw.com/cleanmymac)
  - [cyberduck](https://cyberduck.io/?l=en)
  - [docker](https://www.docker.com/)
  - [docker-toolbox](https://www.docker.com/products/docker-toolbox)
  - [dropbox](https://www.dropbox.com/)
  - [duet](https://www.duetdisplay.com/)
  - [ejector](http://macappstore.org/ejector/)
  - [etcher](https://etcher.io/)
  - [evernote](https://evernote.com/)
  - [gitkraken](https://www.gitkraken.com/)
  - [google-chrome](https://www.google.com/chrome/)
  - [gpgtools](https://gpgtools.org/)
  - [gradle](https://www.gradle.org/)
  - [groovy](http://www.groovy-lang.org)
  - [iterm2](https://www.iterm2.com/)
  - [jumpcut](http://jumpcut.sourceforge.net/)
  - [keepassx](http://keepass.info/)
  - [knox](https://agilebits.com/)  (Discontinued)
  - [lego-digital-designer](ldd.lego.com/)
  - [mactracker](http://mactracker.ca/)
  - [mp3gain](http://projects.sappharad.com/mp3gain/)
  - [namebench](https://namebench.en.softonic.com/)
  - [omnidisksweeper](https://omnidisksweeper.en.softonic.com/mac)
  - [pgadmin4](https://www.pgadmin.org/download/pgadmin-4-macos/)
  - [razorsql](https://razorsql.com/)
  - [sizeup](https://www.irradiatedsoftware.com/sizeup/)
  - [skype](https://www.skype.com/)
  - [slack](https://www.slack.com/‎)
  - [stay](https://cordlessdog.com/stay/)
  - [subler](https://subler.org/)
  - [sublime-text](https://www.sublimetext.com/3)
  - [tunnelblick](https://tunnelblick.net/)
  - [unetbootin](https://unetbootin.github.io/)
  - [vagrant](https://www.vagrantup.com/)
  - [vagrant-manager](http://vagrantmanager.com/)
  - [virtualbox](https://www.virtualbox.org/)
  - [virtualbox-extension-pack](https://www.virtualbox.org/)
  - [vlc](https://www.videolan.org/vlc/)
  - [vnc-viewer](https://www.realvnc.com/en/download/viewer/)
  - [whatsapp](https://www.whatsapp.com/)
  - [wireshark](https://www.wireshark.org/)
  - [xquartz](https://www.xquartz.org/)
  - [xtrafinder](https://www.trankynam.com/xtrafinder/)

### App Store Installation
  - 1124077199 Paws for Trello (2.2.3)
  - 412056820 Trillian (6.0)
  - 963642514 Duplicate Photos Fixer Pro (1.9.3)

### Manual Application Installation

These are mostly direct download links current as of July 2017, some are more difficult to install because of custom installers or other nonstandard install quirks:

  - [Decipher TextMessage](https://deciphertools.com/decipher-textmessage.html)
  - [iShowU HD](http://www.shinywhitebox.com/downloads/iShowU_HD_2.3.20.dmg)
  - [IntelliJ](https://download.jetbrains.com/idea/ideaIU-2017.2.dmg)
  - [RubyMine](https://download.jetbrains.com/ruby/RubyMine-2017.2.dmg)
  - [µTorrent](http://www.utorrent.com/downloads/mac)

#### Licences and settings


## Post-installation Tasks
It's my hope that I can get the rest of these things wrapped up into Ansible playbooks soon, but for now, these steps need to be completed manually (assuming you already have Xcode and Ansible installed, and have run this playbook).

  1. Install [Sublime Package Manager](http://sublime.wbond.net/installation).
  2. Install all the apps that are not yet in this setup (see below).
  3. Configure extra Mail and/or Calendar accounts (e.g. Google, Exchange, etc.).
  4. Google Chrome Profiles
  5. Google Chrome Extensions
     - 1Password
     - Draw.io
     - Restlet Client
     - The Great Suspender

### Dotfiles
  - .aws/*
  - .bash*
  - .git*
  - .ssh/*
  
My dotfiles contain much privates...hence the playbook includes vault encrypted vars. 
You will need to replace these if for some weird reason you use this playbook and not Jeff's

Finally, there are a few other preferences and settings added on for various apps and services.

### Configurations to be added:

## Testing the Playbook
This was tested on a brand new MacBook Pro (June 2017)

## Ansible for DevOps
Check out [Ansible for DevOps](https://www.ansiblefordevops.com/), which teaches you how to automate almost anything with Ansible.

## Author
[Lee Myring](https://www.linkedin.com/in/leemyring/), 2017 (wholly inspired by [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook)).

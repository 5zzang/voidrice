#!/bin/sh
# Profile file. Runs on login.
# TrackPoint
export TrackPoint="Elan TrackPoint"
export Touchpad="Elan Touchpad"
#xinput set-prop "$TrackPoint" 'libinput Accel Profile Enabled' 0, 1 #Switch acceleration profile
#xinput set-prop "$TrackPoint" 'libinput Accel Speed' 0.5 #Increase sensitivity
#xinput set-prop "$Touchpad" 'Device Enabled' 0	#Disable Touchpad

# TimeZone
#export TZ="Asia/Bangkok"
export TZ="Asia/Seoul"

# Adds `~/.scripts` and all subdirectories to $PATH
#export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel -Dswing.crossplatformlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel ${_JAVA_OPTIONS}"
export JAVA_FONTS="/usr/share/fonts/TTF"
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"
export PATH="$(du $HOME/.screenlayout/ | cut -f2 | tr '\n' ':')$PATH"
export EDITOR="vim"
export TERMINAL="st"
#export BROWSER="chromium"
export BROWSER="google-chrome-stable"
export READER="zathura"
#export BIB="$HOME/Documents/LaTeX/uni.bib"
#export REFER="$HOME/.referbib"
export MESSENGER="franz"
export PLAYGROUNDS="$HOME/Playgrounds"

# less/man colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# nimf - Korean Input
export XIM=nimf
export XIM_ARGS=
export XIM_PROGRAM=nimf
export XMODIFIERS=@im=nimf
export GTK_IM_MODULE=nimf
export QT_IM_MODULE=nimf
export QT4_IM_MODULE=nimf

# Java
#export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_191
# Java (AWS CORRETTO 11)
export JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
export PATH=$JAVA_HOME/bin:$PATH

# Groovy
export GROOVY_HOME=/usr/lib/groovy/groovy-2.5.8
export PATH=$GROOVY_HOME/bin:$PATH

# Maven
export MAVEN_HOME=/usr/lib/maven/apache-maven-3.6.0
export PATH=$MAVEN_HOME/bin:$PATH

# Gradle
export GRADLE_HOME=/usr/lib/gradle/gradle-5.4.1
export PATH=$GRADLE_HOME/bin:$PATH

# Flyway
export FLYWAY_HOME=/usr/lib/flyway/5.2.4
export PATH=$FLYWAY_HOME:$PATH

# Ruby
export RUBY_HOME=~/.gem/ruby/2.6.0
export PATH=$RUBY_HOME/bin:$PATH

# Node
export LD_LIBRARY_PATH=/usr/local/lib/
export PAHT=$LD_LIBRARY_PATH:$PATH


#[ ! -f ~/.shortcuts ] && shortcuts >/dev/null 2>&1

[ -f ~/.zshrc ] && source ~/.zshrc

# Start graphical server if i3 not already running.
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

export QT_QPA_PLATFORMTHEME=gtk2
export $(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)

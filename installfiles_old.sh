#!/bin/sh

echo "DEPRECATED: USE ./installfiles" && exit

# # # # #					  # # # # #
# USAGE: Run the script with the name of the program	  #
# as the folder is named (e.g. alacritty, dwm, i3)	  #
# or use 'all' for eveything and non-existent folders	  #
# will just fail to be created.				  #
# EXAMPLE: $ ./installfiles.sh polybar			  #
# Configure $REPODIR to point to the directory your	  #
# source repositories are (e.g. dwm, slstatus).		  #
# Also configure $DOTDIR to the path in which you have	  #
# cloned the dotfiles repo.				  #
# !! Script is not completely optimised.		  #
# # # # #					  # # # # #

# Variables for directories
export DOTFDIR=/home/$USER/dotfiles
export CFGDIR=$HOME/.config
export REPODIR=$HOME/repos
export ALCTTY=$CFGDIR/alacritty
export BSPWM=$CFGDIR/bspwm
export BSPBAR=$REPODIR/bspwmbar
export DWM=$REPODIR/dwm
export I3=$CFGDIR/i3
export PICOM=$CFGDIR/picom
export PLBAR=$CFGDIR/polybar
export SLSTS=$REPODIR/slstatus
export SXHKD=$CFGDIR/sxhkd

cd $DOTFDIR # Changing directory to wherever dotfiles are

# Copying files
case $1 in
	alacritty) # Copying alacritty
		if [ -f $ALCTYY/alacritty.xml ]; then
			mv -vf $ALCTYY/alacritty.xml $ALCTYY/alacritty.old.xml
		fi
		cp -vf alacritty/* $ALCTTY/
		;;
	bspwm) # Copying bspwm
		if [ -f $BSPWM=bspwmrc ]; then
			mv -vf $BSPWM/bspwmrc $BSPWM/bspwmrc.old
		fi
		cp -vf bspwm/* $BSPWM/
		;;
	bspwmbar) # Copying bspwmbar
		if [ -f $BSPBAR/config.h || $BSPBAR/battery.c ]; then
			mv -vf $BSPBAR/config.h $BSPBAR/config.old.h
			mv -vf $BSPBAR/battery.c $BSPBAR/battery.old.c
		fi
		cp -vf bspwmbar/* $BSPBAR/
		;;
	i3) # Copying i3
		if [ -f $I3/config ]; then
			mv -vf $I3/config $I3/config.old
		fi
		cp -vf i3/* $I3/
		;;
	picom) # Copying picom
		if [ -f $PICOM/picom.conf ]; then
			mv -vf $PICOM/picom.conf $PICOM/picom.old.conf
		fi
		cp -vf picom/* $PICOM/
		;;
	polybar) # Copying polybar
		if [ -f $PLBAR/config ]; then
			mv -vf $PLBAR/config $PLBAR/config.old
		fi
		cp -vf polybar/* $PLBAR/
		;;
	slstatus) # Copying slstatus
		if [ -f $SLSTS/config.h ]; then
			mv -vf $SLSTS/config.h $SLSTS/config.h
		fi
		cp -vf slstatus/* $SLSTS/
		;;
	sxhkd) # Copying sxhkd
		if [ -f $SXHKD/sxhkdrc ]; then
			mv -vf $SXHKD/sxhkdrc $SXHKD/sxhkdrc.old
		fi
		cp -vf sxhkd/* $SXHKD/
		;;
	all) # Copying all (same commands as above in a single option)
		if [ -f $ALCTYY/alacritty.xml ]; then
			mv -vf $ALCTYY/alacritty.xml $ALCTYY/alacritty.old.xml
		fi
		if [ -f $BSPWM=bspwmrc ]; then
			mv -vf $BSPWM/bspwmrc $BSPWM/bspwmrc.old
		fi
		if [ -f $BSPBAR/config.h || $BSPBAR/battery.c ]; then
			mv -vf $BSPBAR/config.h $BSPBAR/config.old.h
			mv -vf $BSPBAR/battery.c $BSPBAR/battery.old.c
		fi
		if [ -f $I3/config ]; then
			mv -vf $I3/config $I3/config.old
		fi
		if [ -f $PICOM/picom.conf ]; then
			mv -vf $PICOM/picom.conf $PICOM/picom.conf
		fi
		if [ -f $PLBAR/config ]; then
			mv -vf $PLBAR/config $PLBAR/config.old
		fi
		if [ -f $SLSTS/config.h ]; then
			mv -vf $SLSTS/config.h $SLSTS/config.h
		fi
		if [ -f $SXHKD/sxhkdrc ]; then
			mv -vf $SXHKD/sxhkdrc $SXHKD/sxhkdrc.old
		fi
		cp -vf alacritty/* $ALCTTY/
		cp -vf bspwm/* $BSPWM/
		cp -vf bspwmbar/* $BSPBAR/
		cp -vf i3/* $I3/
		cp -vf picom/* $PICOM/
		cp -vf polybar/* $PLBAR/
		cp -vf slstatus/* $SLSTS/
		cp -vf sxhkd/* $SXHKD/
		;;
	*) echo "no" ;;
esac

#!/bin/bash
echo "Select an option: Listar, DondeEstoy, QuienEsta"
read option
case $option in
	"Listar")
	ls
	;;
	"DondeEstoy")
	pwd
	;;
	"QuienEsta")
	;;
esac


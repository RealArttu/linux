#!/bin/bash

if (whiptail --title "Tarkista ja asenna päivitykset?" --yesno "Haluatko tarkistaa tietokoneeseen saatavilla olevat päivitykset?" 7 70); then
    apt update && apt upgrade -y && apt autoremove -y
    echo "Päivitykset tarkistettu ja asennettu." > /tmp/teksti
    whiptail --textbox /tmp/teksti 7 70
    rm /tmp/teksti
else
    echo "Ei tarkisteta päivityksiä." > /tmp/teksti
    whiptail --textbox /tmp/teksti 7 70
    rm /tmp/teksti
fi
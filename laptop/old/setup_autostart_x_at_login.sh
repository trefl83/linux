# startx at login without display manger like lightdm or slim
# https://wiki.archlinux.org/index.php/Xinitrc#Autostart_X_at_login

cat >> ~/.bash_profile << EOF

# automatically start x at login
[[ -z \$DISPLAY && \$XDG_VTNR -eq 1 ]] && exec startx

EOF

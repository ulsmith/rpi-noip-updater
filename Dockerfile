FROM hypriot/rpi-node:slim
MAINTAINER Paul Smith <p@ulsmith.net>

RUN npm install noip-updater forever -g
CMD start noip-updater -u $USERNAME -e $PASSWORD -d $DOMAIN -f $FREQUENCY

#!/bin/sh

HN="syrma"
if [ -n "${1}" ]; then
    HN=${1}
fi

scp firefox/userChrome.css ${HN}:/etc/firefox-esr/profile/chrome/
scp firefox/user.js firefox/xulstore.json ${HN}:/etc/firefox-esr/profile/
scp firefox/xulstore.json ${HN}:/etc/firefox-esr/
scp firefox/Stylish/* html/*.html ${HN}:/info-disp/
scp scripts/switch*.sh scripts/switch*.py ${HN}:/info-disp/
scp scripts/xsession ${HN}:/root/.xsession
scp scripts/xserverrc ${HN}:/root/.xserverrc
scp config/information-*.service ${HN}:/etc/systemd/system/multi-user.target.wants/

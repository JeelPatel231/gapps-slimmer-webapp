#!/bin/bash

array=( "$@" )

mkdir templates/workspace/$1/ && cd templates/workspace/$1
unzip ../../../open* -d gapps
cd gapps

[[ ! " ${array[@]} " =~ " androidauto " ]] \
&& rm -rf GApps/androidauto-arm64.tar.lz \
&& sed -i "/androidauto/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bandroidauto\b//g' installer.sh \

#### books
[[ ! " ${array[@]} " =~ " books " ]] \
&& rm -rf GApps/books-all.tar.lz \
&& sed -i "/books/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bbooks\b//g' installer.sh \

#### gcam
[[ ! " ${array[@]} " =~ " googlecamera " ]] \
&& rm -rf GApps/cameragoogle-arm64.tar.lz GApps/cameragoogle-common.tar.lz GApps/cameragooglelegacy-arm.tar.lz GApps/cameragooglelegacy-common.tar.lz \
&& sed -i "/cameragoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bcameragoogle\b//g' installer.sh \
&& sed -i '60,221s/\bcamerastock\b//g' installer.sh \

#### news
[[ ! " ${array[@]} " =~ " newsstand " ]] \
&& rm -rf GApps/newsstand-all.tar.lz \
&& sed -i "/newsstand/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bnewsstand\b//g' installer.sh \

#### duo
[[ ! " ${array[@]} " =~ " duo " ]] \
&& rm -rf GApps/duo-arm64.tar.lz \
&& sed -i "/duo/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bduo\b//g' installer.sh \

#### gpay
[[ ! " ${array[@]} " =~ " googlepay " ]] \
&& rm -rf GApps/googlepay-all.tar.lz \
&& sed -i "/googlepay/d" app_densities.txt app_sizes.txt \
   && sed -i '60,221s/\bgooglepay\b//g' installer.sh \

#### keep
[[ ! " ${array[@]} " =~ " keep " ]] \
&& rm -rf GApps/keep-arm64.tar.lz \
&& sed -i "/keep/d" app_densities.txt app_sizes.txt \
   && sed -i '60,221s/\bkeep\b//g' installer.sh \

#### movies and vr
[[ ! " ${array[@]} " =~ " movies " ]] \
&& rm -rf GApps/movies-arm64.tar.lz GApps/moviesvrmode-arm.tar.lz \
&& sed -i "/movies/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bmovies\b//g' installer.sh \

#### music
[[ ! " ${array[@]} " =~ " music " ]] \
&& rm -rf GApps/music-all.tar.lz \
&& sed -i "/music/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bmusic\b//g' installer.sh \

#### pissel looncher
# SEARCH AND WALLPAPERS ARE STANDALONE APPS, BUT IF YOU DONT WANT SEARCH AND WALLPAPERS, no pixel looncher for you
[[ ! " ${array[@]} " =~ " pixellauncher " ]] \
&& rm -rf GApps/pixellauncher-all.tar.lz GApps/pixellauncher-common.tar.lz \
&& sed -i "/pixellauncher/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bpixellauncher\b//g' installer.sh \
&& sed -i '60,221s/\blauncher\b//g' installer.sh \

#### translate
[[ ! " ${array[@]} " =~ " translate " ]] \
&& rm -rf GApps/translate-arm64.tar.lz \
&& sed -i "/translate/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\btranslate\b//g' installer.sh \

#### youthoob
[[ ! " ${array[@]} " =~ " youtube " ]] \
&& rm -rf GApps/youtube-arm64.tar.lz \
&& sed -i "/youtube/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\byoutube\b//g' installer.sh \

# ALWAYS REMOVED APPS --- END ---


#### aosp apps start here


[[ ! " ${array[@]} " =~ " contactsgoogle " ]] \
&& rm -rf GApps/contactsgoogle-all.tar.lz \
&& sed -i "/contactsgoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bcontactsgoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " calculatorgoogle " ]] \
&& rm -rf GApps/calculatorgoogle-all.tar.lz \
&& sed -i "/calculatorgoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bcalculatorgoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " calendargoogle " ]] \
&& rm -rf GApps/calendargoogle-all.tar.lz \
&& sed -i "/calendargoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bcalendargoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " calsync " ]] \
&& rm -rf GApps/calsync-all.tar.lz \
&& sed -i "/calsync/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bcalsync\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " googletts " ]] \
&& rm -rf GApps/googletts-arm64.tar.lz \
&& sed -i "/googletts/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bgoogletts\b//g' installer.sh \
&& sed -i '60,221s/\bpicotts\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " wallpapers " ]] \
&& rm -rf GApps/wallpapers-all.tar.lz \
&& sed -i "/wallpapers/d" app_densities.txt app_sizes.txt \
&& rm -rf GApps/pixellauncher-all.tar.lz GApps/pixellauncher-common.tar.lz \
&& sed -i "/pixellauncher/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bwallpapers\b//g' installer.sh \
&& sed -i '60,221s/\blauncher\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " dialergoogle " ]] \
&& rm -rf GApps/dialergoogle-arm64.tar.lz GApps/dialergoogle-common.tar.lz \
&& sed -i "/dialergoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bdialergoogle\b//g' installer.sh \
&& rm -rf dialerframework-common.tar.lz \
&& sed -i "/dialerframework/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bdialerframework\b//g' installer.sh \
&& sed -i '60,221s/\bdialerstock\b//g' installer.sh \

[[ " ${array[@]} " =~ " dialergoogle " ]] \
&& sed -i '/dialerstock_list=/ a priv-app\/Dialer' installer.sh \


[[ ! " ${array[@]} " =~ " clockgoogle " ]] \
&& rm -rf GApps/clockgoogle-all.tar.lz \
&& sed -i "/clockgoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bclockgoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " messenger " ]] \
&& rm -rf GApps/messenger-arm64.tar.lz \
&& sed -i "/messenger/d" app_densities.txt app_sizes.txt \
&& rm -rf GApps/carrierservices-arm64.tar.lz \
&& rm -rf GApps/carrierservices-all.tar.lz \
&& sed -i "/carrierservices/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bmessenger\b//g' installer.sh \
&& sed -i '60,221s/\bcarrierservices\b//g' installer.sh \
&& sed -i '60,221s/\bmms\b//g' installer.sh \

##### regular apps start here   x

[[ ! " ${array[@]} " =~ " chrome " ]] \
&& rm -rf GApps/chrome-arm64.tar.lz \
&& sed -i "/chrome-/d" app_densities.txt app_sizes.txt \
&& rm -rf GApps/trichromelibrary-arm64.tar.lz \
&& sed -i "/trichromelibrary/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bchrome\b//g' installer.sh \
&& sed -i '60,221s/\btrichromelibrary\b//g' installer.sh \
&& sed -i '60,221s/\bbrowser\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " wellbeing " ]] \
&& rm -rf GApps/wellbeing-all.tar.lz GApps/wellbeing-common.tar.lz \
&& sed -i "/wellbeing/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bwellbeing\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " maps " ]] \
&& rm -rf GApps/maps-arm64.tar.lz \
&& sed -i "/maps/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bmaps\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " photos " ]] \
&& rm -rf GApps/photos-arm64.tar.lz \
&& sed -i "/photos-/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bphotos\b//g' installer.sh \
&& sed -i '60,221s/\bgallery\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " photosvrmode " ]] \
&& rm -rf GApps/photosvrmode-arm64.tar.lz \
&& sed -i "/photosvrmode/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bphotosvrmode\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " playgames " ]] \
&& rm -rf GApps/playgames-arm64.tar.lz\
&& sed -i "/playgames/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bplaygames\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " keyboardgoogle " ]] \
&& rm -rf GApps/keyboardgoogle-arm64.tar.lz \
&& sed -i "/keyboardgoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bkeyboardgoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " gmail " ]] \
&& rm -rf GApps/gmail-arm64.tar.lz \
&& sed -i "/gmail/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bgmail\b//g' installer.sh \
&& sed -i '60,221s/\bemail\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " exchangegoogle " ]] \
&& rm -rf GApps/exchangegoogle-all.tar.lz \
&& sed -i "/exchangegoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bexchangegoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " drive " ]] \
&& rm -rf GApps/drive-arm64.tar.lz \
&& sed -i "/drive/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bdrive\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " vrservices " ]] \
&& rm -rf GApps/vrservice-arm64.tar.lz GApps/vrservice-common.tar.lz \
&& sed -i "/vrservice/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bvrservice\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " taggoogle " ]] \
&& rm -rf GApps/taggoogle-all.tar.lz \
&& sed -i "/taggoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\btaggoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " webviewgoogle " ]] \
&& rm -rf GApps/webviewgoogle-arm64.tar.lz \
&& sed -i "/webviewgoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bwebviewgoogle\b//g' installer.sh \
&& sed -i '60,221s/\bwebviewstock\b//g' installer.sh \


[[ ! " ${array[@]} " =~ " recorder " ]] \
&& rm -rf GApps/recorder-arm64.tar.lz \
&& sed -i "/recorder/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\brecorder\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " search " ]] \
&& rm -rf GApps/search-arm64.tar.lz \
&& sed -i "/search/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bsearch\b//g' installer.sh \
&& rm -rf GApps/pixellauncher-all.tar.lz GApps/pixellauncher-common.tar.lz \
&& sed -i "/pixellauncher/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bpixellauncher\b//g' installer.sh \
&& sed -i '60,221s/\blauncher\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " talkback " ]] \
&& rm -rf GApps/talkback-arm64.tar.lz \
&& sed -i "/talkback/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\btalkback\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " printservicegoogle " ]] \
&& rm -rf GApps/printservicegoogle-all.tar.lz \
&& sed -i "/printservicegoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bprintservicegoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " storagemanagergoogle " ]] \
&& rm -rf GApps/storagemanagergoogle-all.tar.lz \
&& sed -i "/storagemanagergoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bstoragemanagergoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " packageinstallergoogle " ]] \
&& rm -rf GApps/packageinstallergoogle-all.tar.lz \
&& sed -i "/packageinstallergoogle/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bpackageinstallergoogle\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " webviewstub " ]] \
&& rm -rf GApps/webviewstub-all.tar.lz \
&& sed -i "/webviewstub/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bwebviewstub\b//g' installer.sh \
&& sed -i '60,221s/\bwebviewstock\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " cloudprint " ]] \
&& rm -rf GApps/cloudprint-all.tar.lz \
&& sed -i "/cloudprint/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bcloudprint\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " actionsservices " ]] \
&& rm -rf GApps/actionsservices-arm64.tar.lz GApps/actionsservices-common.tar.lz \
&& sed -i "/actionsservices/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bactionsservices\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " speech " ]] \
&& rm -rf GApps/speech-common.tar.lz \
&& sed -i "/speech/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bspeech\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " batteryusage " ]] \
&& rm -rf GApps/batteryusage-arm64.tar.lz \
&& sed -i "/batteryusage/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bbetteryusage\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " markup " ]] \
&& rm -rf GApps/markup-all.tar.lz GApps/markup-lib-arm64.tar.lz GApps/markup-lib-arm.tar.lz \
&& sed -i "/markup/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bmarkup\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " soundpicker " ]] \
&& rm -rf GApps/soundpicker-all.tar.lz  \
&& sed -i "/soundpicker/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bsoundpicker\b//g' installer.sh \

[[ ! " ${array[@]} " =~ " dialerframework " ]] \
&& rm -rf GApps/dialerframework-common.tar.lz \
&& sed -i "/dialerframework/d" app_densities.txt app_sizes.txt \
&& sed -i '60,221s/\bdialerframework\b//g' installer.sh \

zip -r ../GApps-arm64-ten-custom.zip *
cd .. && rm -rf gapps
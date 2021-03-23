UNIX="&fetch=cooked&format=powersfx&container=unix"
URL="$1$UNIX"
wget --no-check-certificate "$URL" -O unpack.zip
unzip unpack.zip
./RunMe.sh
ffmpeg -i craig.flac -ab 320k -map_metadata 0 -id3v2_version 3 craig.mp3
mv craig.mp3 out/

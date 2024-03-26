#!/usr/bin/env bash

# Playlist as string 
#playlist="/home/sammy/StorageBack/Shows/Doctor Who S01-S10 Complete w-extras 1080-720 hevc-d3g/Doctor Who Specials hevc-d3g/Doctor Who 2005 - S00E02 - The Christmas Invasion -.mkv\n
#/home/sammy/StorageBack/Shows/Doctor Who S01-S10 Complete w-extras 1080-720 hevc-d3g/Doctor Who Specials hevc-d3g/Doctor Who 2005 - S00E04 - Runaway Bride.mkv"

media="$(realpath $(dirname -- "$0")/../media)"

# Example shuffling
shuffled_media=( $(shuf -e "$media"/*) )
lengths=(5 2 5)

# EDL as string
edl="edl://"
for i in "${!shuffled_media[@]}"; do
    edl+="${shuffled_media[i]},length=${lengths[i]};"
done

# EDL plain string:
# edl="edl://
# $media/Birds.mp4,length=5;
# $media/Forest.mp4,length=3;
# $media/Blossom.mp4,length=5;"

# Mpv command to play
# -- playlist version
# -- would use --length=(duration) but this applies to all in playlist
# echo -e "$playlist" | mpv --playlist=- --start=0 --length=10 --fs --fs-screen=0
# -- EDl version
echo "<shuffling the media>"
echo "<lengths: ${lengths[@]}>"
mpv "$edl" --fs --fs-screen=0

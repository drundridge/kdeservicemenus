# kdeservicemenus
KDE context menu options for weebs

## Installation
Save to `~/.local/share/kio/servicemenus/` and `~/.local/share/kio/servicemenus/scripts/` and Dolphin will immediately show these options

Note: These are designed for media libraries where all directories are already named in the format "[2025 Q3] CITY THE ANIMATION", which provides these scripts the neccecary information to function. Can be tweaked slightly not to require this.

## Dolphin Context Menu Options
### Anime Series - Apply Cover Art as Icon
Sets folder icon to cover art from various sources
- For all selected folders, rip cover art from MAL and apply to each as icons
- For 1 selected folder, manually set the icon to an existing .folder.png in the folder
- For all selected folders, convert any with obsolete .jpg icons to .png now that KDE has dropped support them (you probably don't need this)

Download: | [applyCoverArt.desktop](/servicemenus/applyCoverArt.desktop) | [scripts/downloadCoverArt.sh](/servicemenus/scripts/downloadCoverArt.sh) | [scripts/jpgToPngCoverArt.sh](/servicemenus/scripts/fixCoverArt.sh)

### Anime Series - Group by Year/Season/Airdate
Configures series in the library to group into sections by season
- For all selected folders, enable season grouping
- For 1 selected folder, set as "Pinned" to appear above everything else

Usage Notes
- `Show in Groups` and `Sort by Tag` must be set in Dolphin to actually _see_ the season groups applied.

Download: | [tagWithAirdate](/servicemenus/tagWithAirdate.desktop) | [/scripts/tagWithAirdate.sh](/servicemenus/tagWithAirdate.sh) 

### Anime Episode - Tag as Watched/Unwatched
Sets episodes in a series' folder to group by watched/unwatched status

Designed to compliment the [autotag.lua](https://github.com/drundridge/mpvscripts/) MPV autotag-after-the-episode-is-finished script, to apply bulk changes at once (ie: if watched elsewhere)
- For all selected episodes, tag as Watched to move them below everything
- For all selected episodes, remove tags (unwatched) to appear at the top
- For all selected files, tag as Other, to move junk non-episode files like the NCOP/NCED out of the way

Download: | [tagAsWatched.desktop](/servicemenus/tagAsWatched.desktop) | [/scripts/tagAsWatched.sh](/servicemenus/scripts/tagAsWatched.sh) | [/scripts/tagAsUnwatched.sh](/servicemenus/scripts/tagAsUnwatched.sh) | [/scripts/tagAsOther.sh](/servicemenus/scripts/tagAsOther.sh) 

### Bulk Image Converter
- Convert selected images to jpg
- Convert selected images to png
- Split selected jpgs into left and right sides (dual page spreads, etc)
- Split selected jpgs into DVD front, spine and back faces

Download: | [imageStuff.desktop](/servicemenus/imageStuff.desktop)

### Apply CRC32
Applies CRC32 to the end of a 1 selected file's filename per Nyaa conventions. Your fansub now looks slightly more professional.

Requires OmegaPhil's [animecheck.py](https://github.com/OmegaPhil/animecheck)

Download: | [crc32.desktop](/servicemenus/crc32.desktop)

### Shred
Deletes stuff.

Download: | [shred.desktop](/servicemenus/shred.desktop)

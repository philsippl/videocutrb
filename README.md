# videocutrb
simple ruby script to automatically cut videos in mass using avconv

put all videos in the input folder and specify the filename, start and end position in work.csv

input format is supposed to be avi, output mp4


##csv format
```
filename relativ to input folder;start position in hh:mm:ss;end position in hh:mm:ss

drop.avi;00:00:00;00:00:02

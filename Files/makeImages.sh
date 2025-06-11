libcamera-vid --codec mjpeg --width 2304 --height 1296 --sharpness 3 --nopreview --shutter 8000 --framerate 30 --flush -t 0 -o - | \
ffmpeg -f mjpeg -i - -vf "fps=1,crop=1804:1196:250:50,format=gray,geq=lum='max(lum(X,Y)-((X-W/2)^2+(Y-H/2)^2)/14000,0)',lut='if(gte(val\,80),255,0)'" -update 1 /home/pi/Pictures/image.jpg -y

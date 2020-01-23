ffmpeg -f concat -i input.txt -vf "scale=-1:1024" -vcodec libx264 -pix_fmt yuv420p -r 30 out.mp4

# Example to create animation movie by ffmpeg

<img src="out.gif">

Animated gif is an de-facto standard format to embed animation in the web, however, it can handle just 256 colors(!), and compression rate is not so good.

This repository describe how to create animation movies from stil pictures with ffmpeg.

[out.mp4](out.mp4) is the result example.

## input.txt

Here is an input:

```
file '1.jpeg'
duration 1
file '2.jpeg'
duration 0.25
file '3.jpeg'
duration 0.25
file '4.jpeg'
duration 0.25
file '5.jpeg'
duration 3
file '5.jpeg'
```

duration 0.25 means "0.25sec".

note that last `file '5.jpeg'` appears twice to display 5.jpeg 3 sec in last.

## make.sh

```bash
ffmpeg -f concat -i input.txt -vf "scale=-1:1024" -vcodec libx264 -pix_fmt yuv420p -r 30 out.mp4
```

## Result

[out.mp4](out.mp4)

You can see also in [here](https://hexe.net/2020/01/23/22:26:36/).

# License

All images are by [@ledyba](https://github.com/ledyba) and [@momiji-san](https://github.com/momiji-san).

Licensed under CC-BY-SA 4.0.

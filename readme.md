# youtube-dl Docker Image

## Quick use
Download default format to current working directory:

    docker run --rm -v$(pwd):/downloads robie2011/youtube-dl https://youtu.be/9bZkp7q19f0


Maximum Quality (BIGSIZE):
```bash
docker run --rm -v$(pwd):/downloads robie2011/youtube-dl -f 'bestvideo+bestaudio' https://youtu.be/9bZkp7q19f0
```


## Download specific format

### Show available formats
List available format and find something suitable

```bash
docker run --rm robie2011/youtube-dl --list-formats https://youtu.be/9bZkp7q19f0
```


Below we see the list of available formats:

    format code  extension  resolution note
    249          webm       audio only tiny   57k , opus @ 50k (48000Hz), 1.50MiB
    250          webm       audio only tiny   72k , opus @ 70k (48000Hz), 1.96MiB
    140          **m4a**        audio only tiny  130k , m4a_dash container, mp4a.40.2@128k (44100Hz), 3.89MiB
    251          webm       audio only tiny  132k , opus @160k (48000Hz), 3.81MiB
    160          mp4        256x144    144p  110k , avc1.4d400c, 24fps, video only, 2.96MiB
    278          webm       256x144    144p  112k , webm container, vp9, 24fps, video only, 2.80MiB
    394          mp4        256x144    144p  126k , av01.0.00M.08, 24fps, video only, 2.52MiB
    242          webm       426x240    240p  226k , vp9, 24fps, video only, 6.09MiB
    395          mp4        426x240    240p  282k , av01.0.00M.08, 24fps, video only, 5.57MiB
    133          mp4        426x240    240p  324k , avc1.4d4015, 24fps, video only, 6.83MiB
    243          webm       640x360    360p  412k , vp9, 24fps, video only, 11.00MiB
    396          mp4        640x360    360p  492k , av01.0.01M.08, 24fps, video only, 10.02MiB
    134          mp4        640x360    360p  658k , avc1.4d401e, 24fps, video only, 13.89MiB
    244          webm       854x480    480p  761k , vp9, 24fps, video only, 18.91MiB
    397          mp4        854x480    480p  867k , av01.0.04M.08, 24fps, video only, 17.99MiB
    135          mp4        854x480    480p 1124k , avc1.4d401e, 24fps, video only, 21.52MiB
    247          webm       1280x720   720p 1520k , vp9, 24fps, video only, 34.77MiB
    398          mp4        1280x720   720p 1724k , av01.0.05M.08, 24fps, video only, 36.04MiB
    136          mp4        1280x720   720p 2250k , avc1.4d401f, 24fps, video only, 36.57MiB
    248          webm       1920x1080  1080p 2680k , vp9, 24fps, video only, 72.66MiB
    137          mp4        1920x1080  1080p 4331k , avc1.640028, 24fps, video only, 100.13MiB
    18           mp4        640x360    360p  709k , avc1.42001E, mp4a.40.2@ 96k (44100Hz), 21.33MiB (best)


### Download specific format
Download specific format (e.g. format #137) to current working directory

```bash
docker run --rm robie2011/youtube-dl -f137 https://youtu.be/9bZkp7q19f0
```

### Download merged format
Formats can be audio or video only. We can merge it together. 
In this case we can get best video with format=137 and best audio with format=251.

```bash
docker run --rm -v$(pwd):/downloads robie2011/youtube-dl -f137+251 https://youtu.be/9bZkp7q19f0
```


# Links
* [Commandline Reference](https://github.com/ytdl-org/youtube-dl)



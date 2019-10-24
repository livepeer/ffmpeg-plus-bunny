FROM jrottenberg/ffmpeg:4.1-ubuntu

RUN ffmpeg -i https://storage.googleapis.com/docs.livepeer.live/bbb_sunflower_1080p_30fps_normal.cgop.flv \
  -c:v copy -c:a copy /bunny.mp4
ADD https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh /usr/local/bin/wait-for-it.sh
RUN chmod 755 /usr/local/bin/wait-for-it.sh

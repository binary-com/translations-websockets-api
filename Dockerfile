FROM busybox:1.36.1
COPY ./ /src
CMD ["cp", "-a", "/src/.", "/home/git/binary-com/translations-websockets-api"]

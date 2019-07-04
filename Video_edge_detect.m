clear
clc
v = VideoReader('***INSERT_VIDEO_FILE***.mp4');
Q = VideoWriter('Tester');
open(Q)
while hasFrame(v)
    K = readFrame(v);
    K = rgb2gray(K);
    h = edge(K);
    h = uint8((h));
    h = 200*h;
    h = imfill(h);
    writeVideo(Q,h);
end
close(Q)
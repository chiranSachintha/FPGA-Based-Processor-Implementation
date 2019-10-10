%% Downsample image using MatLab
clear all;
close all;
clc;

h = [1;2;1];
im = imread('einstein.jpg','jpg');
[ix,iy] = size(im);

memory = zeros(ix * iy , 1);
k=1;
for i = 1:ix
    for j = 1:iy
        memory(k)=im(j,i);
        k=k+1;
    end
end

memory = uint16(memory);

k=1;
colum = 1;
raw = 1;
while ~(colum == 257)
    if raw==255
        raw = 1;
        k = k+2;
        colum = colum+1;
    else
        memory(k) = (memory(k)*h(1)+ memory(k+1)*h(2) + memory(k+2)*h(3))/4;
        raw =raw+1;
        k=k+1;
    end
end

colum = 1;
raw = 1;
k=1; 
while ~(colum == 255)
    if raw==255
        raw = 1;
        k=k+2;
        colum = colum+1;
    else
        memory(k) = (memory(k)*h(1)+ memory(k+256)*h(2) + memory(k+512)*h(3))/4;
        raw =raw+1;
        k=k+1;
    end   
end

memory = uint8(memory);

k=1;
b=1;
raw=1;
colum=1;
while ~(colum==129)
    while ~(raw==129)
        memory(k)= memory(b);
        b=b+2;
        k=k+1;
        raw=raw+1;
    end
    b=b+256;
    raw=1;
    
    colum=colum+1;
end

k=1;
mdown = zeros(ix/2,iy/2);
for i = 1:ix/2
    for j = 1:iy/2
        mdown(j,i) = memory(k);
        k=k+1;
    end
end

figure;
imshowpair(im, mdown, 'montage');
mdown = uint8(mdown);

%% Send image and Receive down sampled image from FPGA
image = im(:);
s = serial('COM4', 'BaudRate', 115200);
disp('Opening port.....');
fopen(s);

disp('Writing.....');
for i=1:65536
   fwrite(s,image(i),'uint8');
end

disp('Processing.....');
pause(5);

disp('Receiving......');
rec = zeros(16384,1);
for i=1:16384
  rec(i,1)=fread(s,1); 
end
disp('Completed.');
fclose(s);

rec = uint8(rec);
pdown = reshape(rec,128,128);
figure;
imshowpair(im, pdown, 'montage');

%% Generate error matrix
error = mdown - pdown;

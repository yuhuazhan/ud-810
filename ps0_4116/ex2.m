

r = 1;
g = 2;
b = 3;

%Swap the red and blue pixels of image 1
img = imread('input/4.1.05.png');
tmp = img(:,:,r);
img(:,:,r) = img(:,:,b);
img(:,:,b) = tmp;
imwrite(img,'output/ps0-2-a-1.png');

%Create a monochrome image (img1_green) by selecting the green channel of image 1

img1 = imread('input/4.1.05.png');
img_green = img1(:,:,g);
imwrite(img_green,'output/ps0-2-b-1.png');

%Create a monochrome image (img1_red) by selecting the red channel of image 1

img2 = imread('input/4.1.05.png');
img_red = img2(:,:,r);
imwrite(img_red,'output/ps0-2-c-1.png');



r = 1;
g = 2;
b = 3;
%Create a monochrome image (img1_green) by selecting the green channel of image 1

img1 = imread('input/4.1.05.png');
img_green = img1(:,:,g);

%Create a monochrome image (img1_red) by selecting the red channel of image 1

img2 = imread('input/4.1.05.png');
img_red = img2(:,:,r);


%Take the center square region of 100x100 pixels of monochrome version of image 1 and
% insert them into the center of monochrome version of image 2
new_width = 100;
new_height = 100;

[height,width,channel]= size(img_green);

left = (width - new_width)/2;
top = (height - new_height)/2;
right =  width - left -1;
bottom = height - top -1;

crop_image = img_green(top:bottom,left:right);
img_red(top:bottom,left:right) = crop_image;
imwrite(img_red,'output/ps0-3-a-1.png');
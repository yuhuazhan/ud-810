%Arithmetic and Geometric operations

%b. Subtract the mean from all pixels, then divide by standard deviation, 
%then multiply by 10 (if your image is 0 to 255) or by 0.05 (if your image ranges from 0.0 to 1.0). 
%Now add the mean back in. Output: ps0-4-b-1.png

pkg load image;

img = imread('input/4.1.05.png');
img_green = img(:,:,2);
img_mean = mean2(img_green); % 1*256
img_std = std2(img_green);
[row column channel] = size(img_green);

subtract_mean = img_green - img_mean;
std_img = subtract_mean ./ img_std .* 10;
std_img = std_img + img_mean;
imwrite(uint8(std_img),'output/ps0-4-b-1.png');


%Shift img1_green to the left by 2 pixels.
img_green_shift = img_green(:,3:end);
fill_zero = zeros(128,1);
img_green_shift = [img_green_shift,fill_zero,fill_zero];
imwrite(img_green_shift,'output/ps0-4-c-1.png');

%Subtract the shifted version of img1_green from the original, and save the difference image.
difference_img = img_green - img_green_shift;
imwrite(difference_img,'output/ps0-4-d-1.png');










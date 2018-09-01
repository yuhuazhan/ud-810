%Take the original colored image (image 1) and start adding Gaussian noise to the pixels in the green channel. 
#Increase sigma until the noise is somewhat visible.  
img = imread('input/4.1.05.png');
[row column channel] = size(img);
noise_sigma = 30;
noise = randn([row,column]) .* noise_sigma;
img(:,:,2) = img(:,:,2) + noise;
imwrite(img,'output/ps0-5-a-1.png');

%Now, instead add that amount of noise to the blue channel.
img = imread('input/4.1.05.png');
[row column channel] = size(img);
noise_sigma = 30;
noise = randn([row,column]) .* noise_sigma;
img(:,:,3) = img(:,:,3) + noise;
imwrite(img,'output/ps0-5-b-1.png');
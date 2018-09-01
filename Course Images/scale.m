

%%scale image with a scale factor 

%function result = scale(img,factor)
%img is a image 
%factor is a scale factor
%result is a image multiply by a scale factor 

%example:
%img = imread('xxx.jpg');
%img1 = scale(img,0.5);
%img2 = scale(img,1.5);
function result = scale(img,factor)
  %scale image factor 
  result = factor .* img;
endfunction

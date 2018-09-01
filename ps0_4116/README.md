# udacity 810 Introduction for Computer Vision (Octave)
---
## Problem Set 0(Octave/Matlab):

problem set can get from [Problem Set 0: Images as Functions](spreadsheets/d/1ecUGIyhYOfQPi3HPXb-7NndrLgpX_zgkwsqzfqHPaus/pubhtml)

Questions

## 1. Input images
從input資料夾讀取圖像並且輸出依照規定的名字在output資料夾
[ex1.m](../ps0_4116/ex1.m)
## 2. Color  planes
主要都是基於操作色彩平面上的操作

問題d，我的答覆:

Which looks more like what you’d expect a monochrome image to look like?

在單色圖像上，若讀從r通道取出顯示的圖像，越接近紅色的則會越白(亮)，反之則越黑(暗)。其他通道也是類似。

Would you expect a computer vision algorithm to work on one better than the other?
會

[ex2.m](../ps0_4116/ex2.m)

    
## 3. Replacement of pixels
將一張圖片的中心，切割出$100*100$的矩陣，並且插入另一張圖片中
[ex3.m](../ps0_4116/ex3.m)
## 4. Arithmetic and Geometric operations

What is the min and max of the pixel values of img1_green? What is the mean?
What is the standard deviation?
And how did you compute these?

:::warning
min 和 max 返回是矩陣每列(row)當中最大和最小的數，mean是求每列(row)中的平均值
:::

mean : 133.02
std  : 68.392
> 均值反映了图像的亮度，均值越大说明图像亮度越大，反之越小；
> 标准差反映了图像像素值与均值的离散程度，标准差越大说明图像的质量越好；

```Octave
img1 = imread('input/4.1.05.png');
min_val = min(min(img_green));
max_val = max(max(img_green));
mean_val = mean2(img_green);
std_val = std2(img_green);
```
[ex4.m](../ps0_4116/ex4.m))
## 5. Noise 
Which looks better? Why?
人眼接受綠色和黃色的比較容易，[影像使用YUV格式，為什麼不用RGB呢?](http://wellswoo.pixnet.net/blog/post/208402501-%E5%BD%B1%E5%83%8F%E4%BD%BF%E7%94%A8yuv%E6%A0%BC%E5%BC%8F%EF%BC%8C%E7%82%BA%E4%BB%80%E9%BA%BC%E4%B8%8D%E7%94%A8rgb%E5%91%A2%3F)

>the eye is most sensitive to yellow/green.
>If you look at the formula for converting  RGB  to YUV (luminance):

$Y =  0.299R + 0.587G + 0.114B$
$U = -0.147R - 0.289G + 0.436B$
$V =  0.615R - 0.515G - 0.100B$

>Notice that the Y-signal (luminance, or brightness) is composed mostly of the green signal? 

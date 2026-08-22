%% Read image
img = imread('ts10.jpg');
gray = rgb2gray(img);

figure;
subplot(1,2,1);
imshow(gray);
title('Grayscale Image');

subplot(1,2,2);
imhist(gray);
title('Histogram of Grayscale Image');

%% Gaussian Noise
gaussian_noisy = imnoise(gray,'gaussian',0,0.01);

figure;
subplot(1,2,1), imshow(gaussian_noisy), title('Gaussian Noise');
subplot(1,2,2), imhist(gaussian_noisy), title('Histogram after Gaussian Noise');

%% 1. Average (Box) Filter
box = ones(3,3)/9;
avg_img = uint8(conv2(double(gaussian_noisy),box,'same'));

figure;
subplot(1,2,1), imshow(avg_img), title('Average Filter');
subplot(1,2,2), imhist(avg_img), title('Histogram');

%% 2. Arithmetic Mean Filter
h = fspecial('average',[3 3]);
arith_img = imfilter(gaussian_noisy,h,'replicate');

figure;
subplot(1,2,1), imshow(arith_img), title('Arithmetic Mean Filter');
subplot(1,2,2), imhist(arith_img), title('Histogram');

%% 3. Harmonic Mean Filter
[m,n] = size(gaussian_noisy);
harm_img = zeros(m,n);

for i = 2:m-1
    for j = 2:n-1
        window = double(gaussian_noisy(i-1:i+1,j-1:j+1));
        harm_img(i,j) = 9 / sum(sum(1 ./ (window + eps)));
    end
end

harm_img = uint8(harm_img);

figure;
subplot(1,2,1), imshow(harm_img), title('Harmonic Mean Filter');
subplot(1,2,2), imhist(harm_img), title('Histogram');

%% 4. Median Filter (Comparison)
median_img = medfilt2(gaussian_noisy,[3 3]);

figure;
subplot(1,2,1), imshow(median_img), title('Median Filter');
subplot(1,2,2), imhist(median_img), title('Histogram');

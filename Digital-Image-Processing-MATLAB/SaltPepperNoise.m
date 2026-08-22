%% Read image Grayscale image + Histogram
img = imread('ts10.jpg');
gray = rgb2gray(img);

figure;
subplot(1,2,1);
imshow(gray);
title('Grayscale Image');

subplot(1,2,2);
imhist(gray);
title('Histogram of Grayscale Image');

%% 2. Salt & Pepper Noise + Histogram
noisy = imnoise(gray, 'salt & pepper', 0.105);

figure;
subplot(1,2,1);
imshow(noisy);
title('Image with Salt & Pepper Noise');

subplot(1,2,2);
imhist(noisy);
title('Histogram of Noisy Image');

%% 3. Median Filter + Histogram
median_filtered = medfilt2(noisy, [3 3]);

figure;
subplot(1,2,1);
imshow(median_filtered);
title('Median Filtered Image');

subplot(1,2,2);
imhist(median_filtered);
title('Histogram of Median Filtered Image');

%% 4. Max Filter + Histogram
max_filtered = ordfilt2(noisy, 9, true(3,3));

figure;
subplot(1,2,1);
imshow(max_filtered);
title('Max Filtered Image');

subplot(1,2,2);
imhist(max_filtered);
title('Histogram of Max Filtered Image');

%% 5. Min Filter + Histogram
min_filtered = ordfilt2(noisy, 1, true(3,3));

figure;
subplot(1,2,1);
imshow(min_filtered);
title('Min Filtered Image');

subplot(1,2,2);
imhist(min_filtered);
title('Histogram of Min Filtered Image');

%% 6. Average (Box) Filter + Histogram
box = ones(3,3) / 9;
avg_filtered = conv2(double(noisy), box, 'same');
avg_filtered = uint8(avg_filtered);

figure;
subplot(1,2,1);
imshow(avg_filtered);
title('Average Filtered Image');

subplot(1,2,2);
imhist(avg_filtered);
title('Histogram of Average Filtered Image');

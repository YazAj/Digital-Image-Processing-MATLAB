clc;
clear;
close all;


%% 1 Read Image
I = imread('ttrrr.png');   

figure, imshow(I), title('Original Image');

%% 2 Convert to Grayscale
if size(I,3) == 3
    I_gray = rgb2gray(I);
else
    I_gray = I;
end

figure, imshow(I_gray), title('Grayscale Image');

%% 3 Thresholding (Adjusted Threshold)
level = graythresh(I_gray);   
level = level * 0.7;          
I_binary = imbinarize(I_gray, level);

figure, imshow(I_binary), title('Binary Image');

%% 4 Erosion
se = strel('square',3);       
I_eroded = imerode(I_binary, se);

figure, imshow(I_eroded), title('Eroded Image');

%% 5 Boundary Extraction (Difference)
Boundary = I_binary - I_eroded;

figure, imshow(Boundary), title('Thin Boundaries');

%% 6 x (Dilation)
se_thick = strel('square',3);    
Boundary_thick = imdilate(Boundary, se_thick);

figure, imshow(Boundary_thick), title('Thick Object Boundaries');

%% 7 Show All Results Together
figure
subplot(2,3,1), imshow(I), title('Original')
subplot(2,3,2), imshow(I_gray), title('Grayscale')
subplot(2,3,3), imshow(I_binary), title('Binary')
subplot(2,3,4), imshow(I_eroded), title('Eroded')
subplot(2,3,5), imshow(Boundary), title('Thin Boundary')
subplot(2,3,6), imshow(Boundary_thick), title('Thick Boundary')
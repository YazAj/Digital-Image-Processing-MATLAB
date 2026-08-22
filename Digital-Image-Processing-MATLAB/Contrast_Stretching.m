% Contrast Stretching (Min-Max Normalization)
I = imread('ts1.jpg');          
G = rgb2gray(I);                

Gd = im2double(G);
rmin = min(Gd(:));
rmax = max(Gd(:));

S = (Gd - rmin) / max(eps, (rmax - rmin));
S8 = uint8(S * 255);

figure;
subplot(1,2,1);
imshow(G); title('Original Gray');

subplot(1,2,2);
imshow(S8); title('Contrast Stretched');

imwrite(S8, 'ContrastStretch.jpg');

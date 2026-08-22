% Gamma Transformation (Power-Law)
I = imread('ts1.jpg');       
G = rgb2gray(I);              
Gd = double(G) / 255;        
gamma = 0.5;                  
c = 1;                        
GammaImg = c * (Gd .^ gamma); 
GammaImg = GammaImg / max(GammaImg(:));   
Gamma8 = uint8(GammaImg * 255);           

figure;
subplot(1,2,1); imshow(G); title('Original Gray Image');
subplot(1,2,2); imshow(Gamma8); 
title(['Gamma ']);

imwrite(Gamma8, 'GammaTransformation.jpg');    

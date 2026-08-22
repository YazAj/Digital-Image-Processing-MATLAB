% Log Transformation
I = imread('ts1.jpg');         
G = rgb2gray(I);               

Gd = double(G) / 255;         

c = 1;                         
LogImg = c * log(1 + Gd);      

LogImg = LogImg / max(LogImg(:));  
Log8 = uint8(LogImg * 255);         
figure;
subplot(1,2,1); imshow(G); title('Original Gray');
subplot(1,2,2); imshow(Log8); title('Log Transformed Image');

imwrite(Log8, 'LogTransformation.jpg');   

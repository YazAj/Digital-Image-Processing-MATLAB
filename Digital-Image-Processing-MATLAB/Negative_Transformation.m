%Negative Transformation%
F1 = imread('ts1.jpg');        
F1 = rgb2gray(F1);             
for x = 1:500
    for y = 1:500
        I2(x, y) = 255 - F1(x, y);   
    end
end
figure(1)
imshow(F1);
figure(2) 
imshow(I2);
imwrite (I2,'Negative.jpg')





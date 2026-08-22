% Simple Piecewise Linear Transformation
I = imread('ts1.jpg');    
G = rgb2gray(I);

Gd = double(G) / 255;      

[m, n] = size(Gd);
PW = zeros(m, n);

for x = 1:m
    for y = 1:n
        r = Gd(x,y);

        if r < 0.5
            s = 2 * r;     
        else
            s = r;         
        end

        PW(x,y) = s;
    end
end
PW8 = uint8(PW * 255);
figure;
subplot(1,2,1); imshow(G); title('Original Gray');
subplot(1,2,2); imshow(PW8); title('Piecewise Linear Result');

imwrite(PW8, 'Piecewise.jpg');

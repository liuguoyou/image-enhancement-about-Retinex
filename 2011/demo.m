clc;
clear all;
close all;
img1=double(imread('F:\xp\�Ա�ʵ��\ʵ��ԭͼ\6.jpg'));
hsv = rgb2hsv( img1 );%RGB�ռ�ת��
v = hsv( :, :, 3 );
Y3 = gum( v./255);
v1=Y3.*255;
hsv( :, :, 3 )=v1;
rgb=hsv2rgb(hsv);



%��ʾͼ��
figure,imshow(uint8(img1)),title('original');
figure,imshow(uint8(rgb)),title('enhanced');
imwrite(uint8(rgb),'F:\xp\�Ա�ʵ��\2011-GUM\6.jpg');
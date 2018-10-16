I = im2double(imread('audrey.jpg'));
%imshow(I, []);

H=[-1 -1 -1;2 2 2;-1 -1 -1]; %horizontal edge detection
B = imfilter(I,H);
imshow(B, []);

H=[-1 -1 -1;-1 8 -1;-1 -1 -1]; %general edge detection
B = imfilter(I,H);
imshow(B, []);

PSF = fspecial('motion', 85, 13);
blurred = imfilter(I, PSF, 'conv', 'circular');
imshow(blurred);

PSF = fspecial('motion', 85, 13);
wnr1 = deconvwnr(blurred, PSF, 0);
imshow(wnr1);

Inoisy = imnoise(I, 'gaussian', 0, 1);
imshow(Inoisy);
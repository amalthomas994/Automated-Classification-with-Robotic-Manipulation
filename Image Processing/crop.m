function [CroppedImage] = crop(InputImage, LowerY, UpperY, LowerX, UpperX)
% [CroppedImage] = crop(InputImage, LowerY, UpperY, LowerX, UpperX)
% this functions will crop an input image to be 
% LowerY <= Y <= UpperY, LowerX <= X <= UpperX
% get the size of the image
[Height, Width, Channels] = size(InputImage);
% if the upper bounds is greater than the size of the image, make
% the upper bounds the max along the appropriate dimension
% if the lower bounds are less than 1, make them 1
UpperX = min(Width, UpperX);
UpperY = min(Height, UpperY);
LowerX = max(1, LowerX);
LowerY = max(1, LowerY);
% now crop the image
CroppedImage = InputImage(LowerY:1:UpperY, LowerX:1:UpperX, 1:1:Channels); 
function [RedImage, GreenImage, BlueImage] = separatecolor(RGBImage)
% [RedImage, GreenImage, BlueImage] = separatecolor(RGBImage)
% this function will separate an RGB image into it's composite 
%components,
% which then can be treated as grey scale images for processing
% get the size of the image
[Height, Width, Channels] = size(RGBImage);
if Channels~=3
% if there isn't 3 channels than it isn't an RGB image
 RedImage=RGBImage(1:1:Height, 1:1:Width, 1);
 GreenImage=RedImage;
 BlueImage=RedImage;
 fprintf(1,'The input image is not a 3-Color channel image\r\n');
else
% red is channel 1, green is channel 2, and blue is channel 3
 RedImage=RGBImage(1:1:Height, 1:1:Width, 1);
 GreenImage=RGBImage(1:1:Height, 1:1:Width, 2);
 BlueImage=RGBImage(1:1:Height, 1:1:Width, 3);
end
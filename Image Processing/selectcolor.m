function [out] = selectcolor(in, LowerR, UpperR, LowerG, UpperG, LowerB, UpperB)
% [out] = selectcolor(in, LowerR, UpperR, LowerG, UpperG, LowerB, 
%UpperB)
% this function creates a binary image based upon pixels which have
% colors that lie within:
% LowerR <= R <= UpperR, LowerG <= G <= UpperG, LowerB <= B <= UpperB
% Note: this is useful for identifying color based off of the 
% histogram of the object you want to select
% get the size of the image
[Height, Width, Channels] = size(in);
% if it isn't 3 channels, than return an empty image
if Channels~=3
 out=[[]];
 fprintf(1,'The input image is not a 3 color channel image\r\n');
else
 out=(in(1:1:Height, 1:1:Width,1) >= LowerR)&(in(1:1:Height, 1:1:Width,1) <= UpperR)&(in(1:1:Height, 1:1:Width,2) >= LowerG)&(in(1:1:Height, 1:1:Width,2) <= UpperG)&(in(1:1:Height, 1:1:Width,3) >= LowerB)&(in(1:1:Height, 1:1:Width,3) <= UpperB);
end
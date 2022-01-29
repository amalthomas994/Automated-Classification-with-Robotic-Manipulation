function [color_image] = mergecolor(Rimage, Gimage, Bimage)
% [color_image] = mergecolor(Rimage, Gimage, Bimage)
% this function merges 3 one colour images to produce 1 3 colour image
% get the sizes of the images
[RHeight, RWidth, RChannels] = size(Rimage);
[GHeight, GWidth, GChannels] = size(Gimage);
[BHeight, BWidth, BChannels] = size(Bimage);
% make sure that they are the same size and are a single channel
if(RHeight~=GHeight)|(RHeight~=BHeight)|(RWidth~=GWidth)|(RWidth~=BWidth)|(RChannels~=1)|(GChannels~=1)|(BChannels~=1)
 fprintf(1,'The images are not the same size, or are not single channelled images\r\n');
 color_image=[];
else
 color_image=zeros([RHeight, RWidth, 3]);
 color_image(:,:,1)=Rimage;
 color_image(:,:,2)=Gimage;
 color_image(:,:,3)=Bimage;
end
end

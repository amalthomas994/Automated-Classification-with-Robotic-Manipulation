image1 = imread('image.bmp');

%image = imcrop(image1, [0 0 630 480]);
imshow(image1)

%stem(image1(:,200))
ph=show_img(image1, 1,0,colormap(gray(256)));
% plot(ph,0:500);
% figure
% stem(ph,0:500);
stem(ph(200,:))
% gray_image = im2bw(image, 0.3); %Coverts Image to binary
% imwrite(gray_image, 'gray_image.bmp');
% medfilt_image = medfilt2(gray_image,[5,5]); %Salt and Pepper Noise Filtering
% mean_kernel=1/25 .* ones([5,5]);
% gray = imfilter(medfilt_image,mean_kernel); %Gaussian Noise Filtering
% complement2 = imcomplement(gray); %Blacks to white and white to black
% 
% %Region Props
% stats = regionprops('table', complement2, 'Centroid', 'MajorAxisLength', 'MinorAxisLength', 'BoundingBox', 'Orientation', 'Area')
% 
% centroids = cat(1, stats.Centroid);
% or = cat(1,stats.Orientation);
% area = cat(1,stats.Area);
% mal = cat(1,stats.MajorAxisLength);
% 
% statssize = size(area);
% si = statssize(1);
% 
% %Plot regionprops properties
% imshow(complement2)
% hold on
% plot(centroids(:,1), centroids(:,2), 'ro')
% hold on
% text(centroids(:,1)-50,centroids(:,2)-30,num2str(centroids),'Color','cyan');
% text(centroids(:,1)-15,centroids(:,2)+50,num2str(area),'Color','red','FontSize',14);
% text(centroids(:,1)-15,centroids(:,2)+80,num2str(mal),'Color','yellow','FontSize',9);
% text(centroids(:,1)-15,centroids(:,2)+80,num2str(or),'Color','yellow','FontSize',14);
% hold off
% conversion = 3.6/56.153;
% 
% %Loop to convert each objects coordinate to real world coordinates
% x=[];
% y=[];
% j=si;
% while si>1
% x(si) = centroids(si);
% y(si) = centroids(j+si);
% xreal(si) = x(si)*conversion;
% yreal(si) = y(si)*conversion;
% si=si-1;
% end
% 
% %Loop to find shape of object
% for si=1:si
% if (700<area(si)<800)
%     disp('Square Object')
% elseif (1400<area(si)<1500)
%     disp('Rectangle Object')
% elseif (550<area(si)<570)
%     disp('Circle Object')
% elseif (310<area(si)<350)
%     disp('Triangle Object')
% end
% end
%     
%  
% %defining transformation matrix for reference, object and base
% A1 = [-1 0 0 x;
%     0 -1 0 y;
%     0 0 1 0;
%     0 0 0 1];
% A2 = [cosd(theta) -sind(theta) 0 x2;
%     sind(theta) cosd(theta) 0 y2;
%     0 0 1 0;
%     0 0 0 1];
%  
%      
% A=A1*A2;
% a=A(1,1);
% b=A(1,2);
% c=A(1,3);
% d=A(1,4);
% e=A(2,1);
% f=A(2,2);
% g=A(2,3);
% h=A(2,4);
% i=A(3,1);
% j=A(3,2);
% k=A(3,3);
% l=A(3,4);
%  
%  
% d5=4.5;
% l3=9.5;
% d4=-1;
% l2=9.5;
% l1=8;
% d1=15;
%  
%  
% q41=0;
% q42=0;
% q43=0;
% q44=1;
%  
%  
% %theta equations
% Tbout=asind(k);
%  
% % theta 5
% if (-j>=0)
% T5out=acosd((i)/cosd(Tbout));
%  
% else
% T5out=asind((-j)/(cosd(Tbout)));
% end
%  
% % theta 3
% T3out=asind((((-d5)*(sind(Tbout))-(d1)+(l))/(l3)));
%  
% %theta 4
% if (T3out>=0)
% T4out=acosd(((i)/cosd(T5out)))-T3out;
% else
% T4out=Tbout-T3out;
% end
%  
% % theta 1
%  T1out = asind((h-d5*sind(asind((g)/cosd(Tbout)))*cosd(Tbout)-l3*sind(asind((g)/cosd(Tbout)))*cosd(T3out)+d4*cosd((acosd((c)/(cosd(Tbout)))))-l2*sind(asind((g)/cosd(Tbout))))/l1);
% % theta 2
% if (g>=0)
%  
%     Taout=acosd((c)/cosd(Tbout));
%      T2out=Taout-T1out;
%  
% else
%   Taout=asind((g)/cosd(Tbout));
% T2out=Taout-T1out;
%  
% end
%  
% 
% orientation = or;
% angle1=T1out;
% angle2=T2out;
% angle3=T3out;
% angle4=T4out;
% angle5=T5out;
% 
% %conversion from angles to ROBIX parameters
% %Servo 1
% y1=-86;
% y2=83;
% 
% 
% x1=-1400;
% x2=1400;
% 
% m=(y2-y1)/(x2-x1);
% b=y1-(m*x1);
% 
% servo1=(angle1-(b))/(m);
% servo1=-servo1;
% 
% % Servo 2
% 
% y1=-74;
% y2=76;
% 
% 
% x1=-1400;
% x2=1400;
% 
% m=(y2-y1)/(x2-x1);
% b=y1-(m*x1);
% 
% servo2=(angle2-(b))/(m);
% servo2=-servo2;
% 
% %Servo 3
% y1=-78;
% y2=85;
% 
% 
% x1=-1400;
% x2=1400;
% 
% m=(y2-y1)/(x2-x1);
% b=y1-(m*x1);
% 
% servo3=(angle3-(b))/(m);
% servo3=-servo3;
% 
% %Servo 4
% y1=-82;
% y2=77;
% 
% 
% x1=-1400;
% x2=1400;
% 
% m=(y2-y1)/(x2-x1);
% b=y1-(m*x1);
% servo4=(angle4-(b))/(m);
% servo4;
% 
% % Servo 5
% y1=-79;
% y2=74;
% 
% 
% x1=-1400;
% x2=1400;
% 
% m=(y2-y1)/(x2-x1);
% b=y1-(m*x1);
% servo5=(angle5-(b))/(m);
% servo5=-servo5;
% 
% 
% %write angles to rbx file
% matrix = [servo1 servo2 servo3 servo4 servo5]
% 
% move = 'move all to 0';
% fid=fopen('robotcoordinates2.rbx','w');
% fprintf(fid, [ move '\n']);
% fprintf(fid, [ 'move 1 to ' servo1 '\n']);
% fprintf(fid, [ 'move 2 to ' servo2 '\n']);
% fprintf(fid, [ 'move 3 to ' servo3 '\n']);
% fprintf(fid, [ 'move 4 to ' servo4 '\n']);
% fprintf(fid, [ 'move 5 to ' servo5 '\n']);
% fprintf(fid, [ 'move 6 to ' orientation '\n']);
% fclose(fid);


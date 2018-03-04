imgfiles=dir('*.jpg');
nfiles=length(imgfiles);
for i=1:nfiles
    currentfiles=imgfiles(i).name;
    currentimage=imread(currentfiles);
    images{i}=currentimage;
    %imshow(images{i}); %to show multiple images
end
%name of animated file to be saved
FileName = 'cardiaAnimation.gif';

%looping through all the files and writing to gif
for k = 1:nfiles
    im = rgb2gray(images{k}); 
    if k ==1
%for first images
        imwrite(im,FileName,'gif','LoopCount',Inf,'DelayTime',0.1);
    else
        imwrite(im,FileName,'gif','WriteMode','append','DelayTime',0.1);
    end
end


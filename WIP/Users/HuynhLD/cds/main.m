v = VideoReader('./video/04.avi');

%{
Main program

while hasFrame(v)
    frame = readFrame(v);
    %[x, y] = feature_extracting(frame);

    %hf=findobj('Name','gui1');
    %close(hf)
end

%}


%denoise
count = 0;
while hasFrame(v)
    count = count + 1;
    frame = readFrame(v);
    
    if count == 100
        break;
    end
end



K = wiener2(frame(:,:,1),[5 5]);
%figure, imshow(K)



N = 5;
[I_nor, R] = normalize(K,N);
imshow(R);


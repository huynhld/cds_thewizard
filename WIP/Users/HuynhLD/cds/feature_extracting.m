function [ x, y ] = feature_extracting( frame )
%UNTITLED 
%   input as an image
%   output as x, y - the coordinates of Center lane
    
    N = 5;
    [I_nor, R] = normalize(frame,N);

    [m, n] = size(R);
    R = R(:,1:n/3);
    [m, n] = size(R);

    image(R)
    hold on;
    
    mt = [];
    for i=m*0.75:m
        arr = [];
        for j=1:n
            if R(i,j) == 0
                plot(j,i,'r.','MarkerSize',10)
                arr = [arr j];  
            end
        end
    end
end


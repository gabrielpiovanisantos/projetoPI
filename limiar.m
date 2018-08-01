function[B]= limiar(A,darkest)
[lin, col] = size(A);
B=A;
for i = 1:lin
    for j=1:col
        if A(i,j) > darkest && A(i,j) < 255 
            B(i,j) = 255;
        else
            B(i,j) = 0;
        end   
    end
end

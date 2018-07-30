function[B]= limiar(A)
[lin, col] = size(A);
B=A;
for i = 1:lin
    for j=1:col
        if A(i,j) > 0
            B(i,j) = 255;
        else
            B(i,j) = 0;
        end   
    end
end

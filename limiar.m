function[B]= limiar(A,min, max)
[lin, col] = size(A);
B=A;
for i = 1:lin
    for j=1:col
        if A(i,j) > 50 & A(i,j) < 101 
            B(i,j) = 255;
        else
            B(i,j) = 0;
        end   
    end
end

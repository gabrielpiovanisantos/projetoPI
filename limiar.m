function[B]= limiar(A, min, max)
[lin, col] = size(A);
B = A;
for i = 1:lin
    for j=1:col
        if A(i,j) > min & A(i,j) < max 
            B(i,j) = 255; %branco
        else
            B(i,j) = 0; %preto
        end
    end
end
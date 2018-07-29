function [B]=funcaoMediana(A)
  size_template=3;
  A = mat2gray(A);
  [lin,col]=size(A);

  for i=2:(lin-fix(size_template/2))
    for j=2:(col-fix(size_template/2))
      k=1;
      for m=i-1:i+1
        for n=j-1:j+1
          vetor_elem_mediana(k)=A(m,n);
          k=k+1;
        end
      end
      vetor_elem_mediana=sort(vetor_elem_mediana);
      B(i,j)=vetor_elem_mediana(fix(length(vetor_elem_mediana)/2)+1);
    end
  end
end
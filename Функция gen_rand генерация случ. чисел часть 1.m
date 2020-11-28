function [A,min]=gen_rand(max_elem, N)
alpha=(exp(max_elem)-exp(1));
A=zeros(N,1);
for i=1:N
    A(i)=log(rand()*alpha+exp(1));
end
A=sort(A);
min=A(1);
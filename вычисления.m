N=14500000;
K=20000;
A=zeros(K,1);
B=zeros(K,1);
m=1;
for i=floor(linspace(4000000,N-1,K))
    num=0;
    for j=1:1000
        ind=floor(rand()*(i-1)+1);
        element=data(8500000+floor(rand()*50000));
        num=num+interp(i,data,element);
    end
    A(m)=i;
    B(m)=num/1000;
    m=m+1;
    fprintf(fileID6,'%u %f \n',i,num/1000);
end
plot(A,B)
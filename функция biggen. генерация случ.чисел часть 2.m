N=1000000;
K=29;
ful_num=K*N;
last = N*K;
first = last-N+1;
min=500;
for i=1:K
   [data(first:last,1),min]=gen_rand(min-1, N);
   if min < 20
       disp((K-i)*N);
       break;
   end
   first=first-N;
   last=last-N;
end
clc; 
%------------plz clear workspace as well before running next iteration set-------
%---- Enter N=no of queen, i=enter Number for iteration u want 
N=input('enter Board diamention N=')
 iteration=input('enter iteration =')    
 %--------call a function for N queen and will do i iterations
 for i=1:iteration
   solution_matx{i}=myfunct1(N);
    copy_solution_matx{i}=solution_matx{i};
       
end
 %------will compare the each element of solution matricx with all elemets
 %to find total no of solution.
for k1 =1:iteration
  for k2=1:iteration
    if solution_matx{k1}==copy_solution_matx{k2}
       copy_solution_matx{k2}=k1*ones(N)
    else
        copy_solution_matx{k2}=copy_solution_matx{k2}
    end
  end    
end

%--- will add all elements of all matrix that have found( all possible
%solution). summ of similar matrix will be equal . this will give row
%vector of 1*iteration
for i2=1:iteration
    simmilar_elements_sum(i2)=sum(copy_solution_matx{i2},'all')
end
%---will display No of solutions by 2nd coloumn of U 
[U,I]=unique(simmilar_elements_sum,'first')
possible_soln=size(U)
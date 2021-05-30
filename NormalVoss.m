function outVoss = NormalVoss(arrInp1)
   % Indicator Sequence for A nucleotide
   for i = 1:length(arrInp1)
        valCompare = strcmp(arrInp1(i),'A');
        if (valCompare == 1)
          outVossA(i) =1;
        else
          outVossA(i) = 0;  
       end
   end
   
   %Indicator Sequence for C nucleotide
   for j = 1:length(arrInp1)
        valCompare = strcmp(arrInp1(j),'C');
        if (valCompare == 1)
          outVossC(j) =1;
        else
          outVossC(j) = 0;  
        end
   end
   
   %Indicator Sequence for G nucleotide
   for k = 1:length(arrInp1)
        valCompare = strcmp(arrInp1(k),'G');
        if (valCompare == 1)
          outVossG(k) =1;
        else
          outVossG(k) = 0;  
          
        end
   end
  
   %Indicator Sequence for T nucleotide
   for p = 1: length(arrInp1)
        valCompare = strcmp(arrInp1(p),'T');
        if (valCompare == 1)
          outVossT(p) =1;
        else
          outVossT(p) = 0;  
        end
   end
   
   outVoss = [outVossA;outVossC;outVossG;outVossT];
end
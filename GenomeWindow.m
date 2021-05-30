function[strWindowedSeq] = GenomeWindow(inSeq1)
    strSeq = inSeq1;
    valWinSize = 200;%200;
    valWinOverlap = 50;%50;
    valSeqLen = length(strSeq)
    N = (valSeqLen/(valWinSize-valWinOverlap)) % Windows Size
    %M = round(N);
    if (round(N)>N)
      M = round(N)
      display(M);
    elseif(N>round(N))&((N-round(N))>1.5)
       M = round(N)+1
       display(M);
    elseif(N>round(N))&((N-round(N))<1.5)
      M = round(N)
      display(M);
    end
    
    %strWindowedSeq = struct([]);
    k = 0 %Initialise row counter
    j = 1  %Intialise begin of window
    valEndSeqRow = valWinSize
    for i = 1:M
        if (valEndSeqRow>valSeqLen)
            k = valEndSeqRow-valSeqLen
            valEndSeqRow=valSeqLen
            break
        end
        strWindowedSeq(i).Seq = strSeq(j:valEndSeqRow);
        j = valEndSeqRow-valWinOverlap
        valEndSeqRow = (j+valWinSize)-1
    end
     %valEndSeqRowFinal = valSeqLen
     %j = valEndSeqRow-valWinOverlap;
     if (k>0)
        strWindowedSeq(M).Seq = strSeq(j:valEndSeqRow);
     
        %Pad the remaining portion with '-'
        P = length(strWindowedSeq(M).Seq) +1
        R =  valWinSize 
        for x = P:R
         strWindowedSeq(M).Seq(x) = '-';%strSeq(j:valEndSeqRow);   
        end
     end
end
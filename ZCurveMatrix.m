function [ZCMat] = ZCurveMatrix(inSeq)
    inSeqStruct = GenomeWindow(inSeq);
    %if (isempty(inSeqStruct)==0)
        M = length(inSeqStruct)
    %else
     %M = 0; 
    %end
    valZCMat = struct([]);
    for i = 1:M
        valZCMat(i).Val = ZCurve(NormalVoss(inSeqStruct(i).Seq));
    end
    %Generate the Normalized Red Matrix(1st Matrix)
    ZCMat1 = MinMaxNormalize(valZCMat(1).Val(1,:));
    for i = 2:M
        ZCMat1 = [ZCMat1;MinMaxNormalize(valZCMat(i).Val(1,:))];
    end
    %Generate the Normalized Green Matrix(2nd Matrix)
    ZCMat2 = MinMaxNormalize(valZCMat(1).Val(2,:));
    for i = 2:M
        ZCMat2 = [ZCMat2;MinMaxNormalize(valZCMat(i).Val(2,:))];
    end
    %Generate the NormalizedBlue Matrix(3rd Matrix)
    ZCMat3 = MinMaxNormalize(valZCMat(1).Val(3,:));
    for i = 2:M
        ZCMat3 = [ZCMat3;MinMaxNormalize(valZCMat(i).Val(3,:))];
    end
    %Generate a 3D Normalized Matrix from the 3 Matrices
    
    for i = 1:M
        for j = 1:200
            for k = 1:3
                if (k == 1)
                  ZCMat(i,j,k)=ZCMat1(i,j);
                end
                if (k == 2)
                  ZCMat(i,j,k)=ZCMat2(i,j);
                end
                if (k == 3)
                  ZCMat(i,j,k)=ZCMat3(i,j);
                end
            end
        end
    end
    
end
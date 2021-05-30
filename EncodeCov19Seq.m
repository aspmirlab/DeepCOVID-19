function [] = EncodeCov19Seq(inSeq)
    intSeqSize = size(inSeq)
    intSeqSize = intSeqSize(1)
    strSeqSample = '';
    for i = 1:intSeqSize
        strSeqSample = strcat(strSeqSample,inSeq.Value(i))
    end
    strSeqSample = char(strSeqSample)
    imshow(ZCurveMatrix(strSeqSample))
    
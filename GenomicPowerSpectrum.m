function[PS] = GenomicPowerSpectrum(valMappedNucleotide,strMappingMethod)
%PS = Power Spectrum of the Encoded Genomics
%valMappedNucleotide = Numerically Mapped Nucleotide
%strMappingMethod = 'Voss' or 'Zcurve' or 'Tetrahedron'
valMapNt = valMappedNucleotide;
strMapMtd =strMappingMethod;
if (strcmp('EIIP',strMapMtd) == 1)
   U = (abs(fft(valMapNt))).^2;
   %Uc = (abs(fft(valMapNt(2,:)))).^2;
   %Ug = (abs(fft(valMapNt(3,:)))).^2;
   %Ut = (abs(fft(valMapNt(4,:)))).^2;
   PS = U;%a+Uc+Ug+Ut;
end
if (strcmp('Voss',strMapMtd) == 1)
   Ua = (abs(fft(valMapNt(1,:)))).^2;
   Uc = (abs(fft(valMapNt(2,:)))).^2;
   Ug = (abs(fft(valMapNt(3,:)))).^2;
   Ut = (abs(fft(valMapNt(4,:)))).^2;
   PS = Ua+Uc+Ug+Ut;
end
if (strcmp('Zcurve',strMapMtd) == 1)||(strcmp('Tetrahedron',strMapMtd) == 1)
   U1 = (abs(fft(valMapNt(1,:)))).^2;
   U2 = (abs(fft(valMapNt(2,:)))).^2;
   U3 = (abs(fft(valMapNt(3,:)))).^2;
   PS = U1+U2+U3;
end
   
end
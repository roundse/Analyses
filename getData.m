load matlabexcit

sppos = SpikeReader('spkposition.dat');
spprog = SpikeReader('spkprogression.dat');
splv = SpikeReader('spklinear velocity.dat');
spav = SpikeReader('spkangular velocity.dat');
sphd = SpikeReader('spkhead direction.dat');
%spexc = SpikeReader('spkexcit.dat');
spinh = SpikeReader('spkinhib.dat');

srPos = sppos.readSpikes(15);
srProg = spprog.readSpikes(15);
srLV = splv.readSpikes(15);
srAV = spav.readSpikes(15);
srHD = sphd.readSpikes(15);
%srExc = spexc.readSpikes(15);
srInh = spinh.readSpikes(15);

startPos = (length(srPos)-200)+1;
startProg = (length(srProg)-200)+1;
startLV = (length(srLV)-200)+1;
startAV = (length(srAV)-200)+1;
startHD = (length(srHD)-200)+1;
startInh = (length(srInh)-200)+1;

srPos = srPos(startPos:end,:);
srProg = srProg(startProg:end,:);
srLV = srLV(startLV:end,:);
srAV = srAV(startAV:end,:);
srHD = srHD(startHD:end,:);
srInh = srInh(startInh:end,:);

z = [0:1:13];
y3 = gaussmf(z,[1 6]);
y3 = y3/sum(y3);

srPosSm = filtfilt(y3,1,srPos);
srProgSm = filtfilt(y3,1,srProg);
srLVSm = filtfilt(y3,1,srLV);
srAVSm = filtfilt(y3,1,srAV);
srHDSm = filtfilt(y3,1,srHD);
srExcSm = filtfilt(y3,1,srExc);
srInhSm = filtfilt(y3,1,srInh);

save;
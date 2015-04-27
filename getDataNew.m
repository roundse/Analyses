%load matlabexcit

spInps = SpikeReader('spk_inputs.dat');
spExcinps = SpikeReader('spk_excitatory inputs.dat');
spexc = SpikeReader('spk_excitatory.dat');


srInps = spInps.readSpikes(15);
srExcInps = spExcinps.readSpikes(15);
srExc = spexc.readSpikes(15);
% srInh = spinh.readSpikes(15);

startInps = (length(srInps)-200)+1;
startExcInps = (length(srExcInps)-200)+1;
startExc = (length(srExc)-200)+1;

srInps = srInps(startInps:end,:);
srExcInps = srExcInps(startExcInps:end,:);
srExc = srExc(startExc:end,:);

z = [0:1:13];
y3 = gaussmf(z,[1 6]);
y3 = y3/sum(y3);

srInpSm = filtfilt(y3,1,srInps);
srExcInpSm = filtfilt(y3,1,srExcInps);

% srAVSm = srInpsSm(:,1:4);
% srHDSm = srInpsSm(:,5:8);
% srPosSm = srInpsSm(:,9:12);
% srLVSm = srInpsSm(:,13:17);
% srProgSm = srInpsSm(:, 18:20);

% srExcAVSm = srExcInpsSm(:,1:4);
% srExcHDSm = srExcInpsSm(:,5:8);
% srExcPosSm = srExcInpsSm(:,9:12);
% srExcLVSm = srExcInpsSm(:,13:17);
% srExcProgSm = srExcInpsSm(:, 18:20);

srExcSm = filtfilt(y3,1,srExc);


save;
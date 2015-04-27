% spangvel = SpikeReader('spkangular velocity.dat');
% srInpSm = spangvel.readSpikes();
% 
% splinvel = SpikeReader('spklinear velocity.dat');
% srInpSm = splinvel.readSpikes();
% 
% spheaddir = SpikeReader('spkhead direction.dat');
% srInpSm = spheaddir.readSpikes();
% 
% sppos = SpikeReader('spkposition.dat');
% srInpSm = sppos.readSpikes();
% 
% spprog = SpikeReader('spkprogression.dat');
% srInpSm = spprog.readSpikes();
% 
% spexc = SpikeReader('spkexcit.dat');
% srExcSm = spexc.readSpikes();
% 
% spinh = SpikeReader('spkinhib.dat');
% srInh = spinh.readSpikes();
% 
% z = [0:1:13];
% y3 = gaussmf(z,1,6);
% y3 = y3/sum(y3);

clear
close all
clc

load matlab

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%% HEAD DIRECTION CORRELATIONS %%%%%%%%%%%%%

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,5));
end
[k, indecesHD1] = find(p<.05);
% 
% if isempty(indecesHD1) == 0
%     figure;
%     plot (srInpSm(:,1), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesHD1)
%         plot(srExcSm(:,indecesHD1(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Head Dir Neuron 1');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,6));
end
[k, indecesHD2] = find(p<.05);

% if isempty(indecesHD2) == 0
%     figure;
%     plot (srInpSm(:,2), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesHD2)
%         plot(srExcSm(:,indecesHD2(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Head Dir Neuron 2');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,7));
end
[k, indecesHD3] = find(p<.05);

% if isempty(indecesHD3) == 0
%     figure;
%     plot (srInpSm(:,3), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesHD3)
%         plot(srExcSm(:,indecesHD3(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Head Dir Neuron 3');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,8));
end
[k, indecesHD4] = find(p<.05);

% if isempty(indecesHD4) == 0
%     figure;
%     plot (srInpSm(:,4), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesHD4)
%         plot(srExcSm(:,indecesHD4(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Head Dir Neuron 4');
% end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% ANG VEL CORRELATIONS %%%%%%
for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,1));
end
[k, indecesAV1] = find(p<.05);

% if isempty(indecesAV1) == 0
%     figure;
%     plot (srInpSm(:,1), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesAV1)
%         plot(srExcSm(:,indecesAV1(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Ang Vel Neuron 1');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,2));
end
[k, indecesAV2] = find(p<.05);
% if isempty(indecesAV2) == 0
%     figure;
%     plot (srInpSm(:,2), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesAV2)
%         plot(srExcSm(:,indecesAV2(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Ang Vel Neuron 2');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,3));
end
[k, indecesAV3] = find(p<.05);
% if isempty(indecesAV3) == 0
%     figure;
%     plot (srInpSm(:,3), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesAV3)
%         plot(srExcSm(:,indecesAV3(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Ang Vel Neuron 3');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,4));
end
[k, indecesAV4] = find(p<.05);
% if isempty(indecesAV4) == 0
%     figure;
%     plot (srInpSm(:,4), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesAV4)
%         plot(srExcSm(:,indecesAV4(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Ang Vel Neuron 4');
% end


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%% Lin Vel Correlations %%%%%%

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,13));
end
[k, indecesLV1] = find(p<.05);

% if isempty(indecesLV1) == 0
%     figure;
%     plot (srInpSm(:,1), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesLV1)
%         plot(srExcSm(:,indecesLV1(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Lin Vel Neuron 1');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,14));
end
[k, indecesLV2] = find(p<.05);
% if isempty(indecesLV2) == 0
%     figure;
%     plot (srInpSm(:,2), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesLV2)
%         plot(srExcSm(:,indecesLV2(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Lin Vel Neuron 2');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,15));
end
[k, indecesLV3] = find(p<.05);
% if isempty(indecesLV3) == 0
%     figure;
%     plot (srInpSm(:,3), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesLV3)
%         plot(srExcSm(:,indecesLV3(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Lin Vel Neuron 3');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,16));
end
[k, indecesLV4] = find(p<.05);
% if isempty(indecesLV4) == 0
%     figure;
%     plot (srInpSm(:,4), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesLV4)
%         plot(srExcSm(:,indecesLV4(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Lin Vel Neuron 4');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,17));
end
[k, indecesLV5] = find(p<.05);
% if isempty(indecesLV5) == 0
%     figure;
%     plot (srInpSm(:,5), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesLV5)
%         plot(srExcSm(:,indecesLV5(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Lin Vel Neuron 5');
% end

% % % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%% POSITION CORRELATIONS %%%%%%

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,9));
end
[k, indecesPos1] = find(p<.05);
% if isempty(indecesPos1) == 0
%     figure;
%     plot (srInpSm(:,1), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesPos1)
%         plot(srExcSm(:,indecesPos1(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Position Neuron 1');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,10));
end
[k, indecesPos2] = find(p<.05);
% if isempty(indecesPos2) == 0
%     figure;
%     plot (srInpSm(:,2), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesPos2)
%         plot(srExcSm(:,indecesPos2(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Position Neuron 2');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,11));
end
[k, indecesPos3] = find(p<.05);
% if isempty(indecesPos3) == 0
%     figure;
%     plot (srInpSm(:,3), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesPos3)
%         plot(srExcSm(:,indecesPos3(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Position Neuron 3');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,12));
end
[k, indecesPos4] = find(p<.05);
% if isempty(indecesPos3) == 0
%     figure;
%     plot (srInpSm(:,3), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesPos3)
%         plot(srExcSm(:,indecesPos3(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Position Neuron 3');
% end

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% PROGRESSION CORRELATIONS %%%%%%%

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,18));
end
[k, indecesProg1] = find(p<.05);
% if isempty(indecesProg1) == 0
%     figure;
%     plot (srInpSm(:,1), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesProg1)
%         plot(srExcSm(:,indecesProg1(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Progresion Neuron 1');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,19));
end
[k, indecesProg2] = find(p<.05);
% if isempty(indecesProg2) == 0
%     figure;
%     plot (srInpSm(:,2), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesProg2)
%         plot(srExcSm(:,indecesProg2(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Progresion Neuron 2');
% end

for i = 1:109
    [r(i), p(i)] = corr(srExcSm(:,i), srInpSm(:,20));
end
[k, indecesProg3] = find(p<.05);
% if isempty(indecesProg3) == 0
%     figure;
%     plot (srInpSm(:,3), 'b');
%     hold on;
%     gridxy([53 102 161], 'Color', 'r', 'Linestyle', ':');
%     hold on;
%     for i = 1:length(indecesProg3)
%         plot(srExcSm(:,indecesProg3(i)), 'k');
%         hold on;
%     end
%     title('Exc Cells Correlated with Progresion Neuron 3');
% end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 19 distinct vectors, want to find number of cells that occur ONLY in each
% of those vectors.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Stick all 19 together and then find unique values
AllInputNs = [indecesHD1 indecesHD2 indecesHD3 indecesHD4 indecesAV1 indecesAV2...
                indecesAV3 indecesAV4 indecesLV1 indecesLV2 indecesLV3 indecesLV4...
                indecesPos1 indecesPos2 indecesPos3 indecesPos4 indecesProg1 indecesProg2...
                indecesProg3];
            
uniq = unique(AllInputNs);
total = length(uniq);
belongs = zeros(1,5);

j = 1;
k = 1;
l = 1;
m = 1;
n = 1;
for i = 1:length(AllInputNs)
    if ( ~isempty(find(indecesHD1 == AllInputNs(i))) || ...
            ~isempty(find(indecesHD2 == AllInputNs(i))) || ...
            ~isempty(find(indecesHD3 == AllInputNs(i))) || ...
            ~isempty(find(indecesHD4 == AllInputNs(i))) )
        
        belongs(1) = true;
        disp('Senstive to head direction!');
    end
    if ( ~isempty(find(indecesLV1 == AllInputNs(i))) || ...
            ~isempty(find(indecesLV2 == AllInputNs(i))) || ...
            ~isempty(find(indecesLV3 == AllInputNs(i))) || ...
            ~isempty(find(indecesLV4 == AllInputNs(i))) || ...
            ~isempty(find(indecesLV5 == AllInputNs(i))) )
        
        belongs(2) = true;
        disp('Sensitive to linear velocity!');
    end
    if ( ~isempty(find(indecesAV1 == AllInputNs(i))) || ...
            ~isempty(find(indecesAV2 == AllInputNs(i))) || ...
            ~isempty(find(indecesAV3 == AllInputNs(i))) || ...
            ~isempty(find(indecesAV4 == AllInputNs(i))) )
        
        belongs(3) = true;
        disp('Sensitive to angular velocity!');
    end
    if ( ~isempty(find(indecesPos1 == AllInputNs(i))) || ...
            ~isempty(find(indecesPos2 == AllInputNs(i))) || ...
            ~isempty(find(indecesPos3 == AllInputNs(i))) ) || ...
            ~isempty(find(indecesPos4 == AllInputNs(i)) )
        
        belongs(4) = true;
        disp('Sensitive to position!');
    end
    if ( ~isempty(find(indecesProg1 == AllInputNs(i))) || ...
            ~isempty(find(indecesProg2 == AllInputNs(i))) || ...
            ~isempty(find(indecesProg3 == AllInputNs(i))) )
        
        belongs(5) = true;
        disp('Sensitive to progression!');
    end
    
    if sum(belongs) == 5
        belongs5(j) = AllInputNs(i);
        j = j + 1;
    elseif sum(belongs) == 4
        belongs4(k) = AllInputNs(i);
        k = k + 1;
    elseif sum(belongs) == 3
        belongs3(l) = AllInputNs(i);
        l = l + 1;
    elseif sum(belongs) == 2
        belongs2(m) = AllInputNs(i);
        m = m + 1;
    elseif sum(belongs) == 1
        belongs1(n) = AllInputNs(i);
    else
        disp('something is wrong, doesnt belong to any');
    end
end

% if belongs5
%     disp([num2str(length(belongs5)), ' neurons respond to all 5 inputs']);
% end
% if belongs4
%     disp([num2str(length(belongs4)), ' neurons respond to 4 inputs']);
% end
% if belongs3
%     length(belongs3)
% end
if belongs2
    length(belongs2)
end
% if belongs1
%     length(belongs1)
% end

figure;
% percent5 = length(belongs5)/total;
% percent4 = length(belongs4)/total;
percent2 = length(belongs2)/total;
% x = [percent5];
x = [percent2];
labels = {'2 Inputs'};
pie(x, labels);
title('Sensitivity to Multiple Inputs');
legend('2 inputs', 'Location', 'South');
% total5 = length(belongs5);
% for i = 1:length(belongs5)
%     for j = 1:4
%         [rHD(j), pHD(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,1));
%         [rHD(j), pHD(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,2));
%         [rHD(j), pHD(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,3));
%         [rHD(j), pHD(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,4));
%     end
%     rAll(1) = min(pHD);
%     for j = 1:4
%         [rAV(j), pAV(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,1));
%         [rAV(j), pAV(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,2));
%         [rAV(j), pAV(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,3));
%         [rAV(j), pAV(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,4));
%     end
%     rAll(2) = min(pAV);
%     for j = 1:5
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,1));
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,2));
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,3));
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,4));
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,5));
%     end
%     rAll(3) = min(pLV);
%     for j = 1:3
%         [rPos(j), pPos(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,1));
%         [rPos(j), pPos(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,2));
%         [rPos(j), pPos(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,3));
%     end
%     rAll(4) = min(pPos);
%     for j = 1:3
%         [rProg(j), pProg(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,1));
%         [rProg(j), pProg(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,2));
%         [rProg(j), pProg(j)] = corr(srExcSm(:,belongs5(i)), srInpSm(:,3));
%     end 
%     rAll(5) = min(pProg);
% %     rAll(:)
% %     min(rAll)
%     if min(rAll) == min(pHD)
%         rHeadDir(i) = true;
%         rLinVel(i) = false;
%         rAngVel(i) = false;
%         rPosition(i) = false;
%         rProgression(i) = false;
%     elseif min(rAll) == min(pAV)
%         rHeadDir(i) = false;
%         rLinVel(i) = false;
%         rAngVel(i) = true;
%         rPosition(i) = false;
%         rProgression(i) = false;
%     elseif min(rAll) == min(pLV)
%         rHeadDir(i) = false;
%         rLinVel(i) = true;
%         rAngVel(i) = false;
%         rPosition(i) = false;
%         rProgression(i) = false;
%     elseif min(rAll) == min(pPos)
%         rHeadDir(i) = false;
%         rLinVel(i) = false;
%         rAngVel(i) = false;
%         rPosition(i) = true;
%         rProgression(i) = false;
%     elseif min(rAll) == min(pProg)
%         rHeadDir(i) = false;
%         rLinVel(i) = false;
%         rAngVel(i) = false;
%         rPosition(i) = false;
%         rProgression(i) = true;
%     else
%         disp('if no correl is highest, something is the matter');
%     end
% %     pause
% end
% 
% figure;
% percentHD = (sum(rHeadDir)/total5) * 100;
% disp([num2str(percentHD),'% are most response to head direction']);
% percentLV = (sum(rLinVel)/total5) * 100;
% disp([num2str(percentLV),'% are most response to linear velocity']);
% percentAV = (sum(rAngVel)/total5) * 100;
% disp([num2str(percentAV),'% are most response to angular velocity']);
% percentPos = (sum(rPosition)/total5) * 100;
% disp([num2str(percentPos),'% are most response to position']);
% percentProg = (sum(rProgression)/total5) * 100;
% disp([num2str(percentProg),'% are most response to progression']);
% 
% x = [percentHD percentLV percentAV percentPos percentProg];
% labels = {'Head Direction','LinearVelocity','Angular Velocity', 'Position','Progression'};
% pie(x,labels);

% 
% total4 = length(belongs4);
% for i = 1:length(belongs4)
%     for j = 1:4
%         [rHD(j), pHD(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,1));
%         [rHD(j), pHD(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,2));
%         [rHD(j), pHD(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,3));
%         [rHD(j), pHD(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,4));
%     end
%     rAll(1) = min(pHD);
%     for j = 1:4
%         [rAV(j), pAV(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,1));
%         [rAV(j), pAV(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,2));
%         [rAV(j), pAV(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,3));
%         [rAV(j), pAV(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,4));
%     end
%     rAll(2) = min(pAV);
%     for j = 1:5
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,1));
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,2));
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,3));
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,4));
%         [rLV(j), pLV(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,5));
%     end
%     rAll(3) = min(pLV);
%     for j = 1:3
%         [rPos(j), pPos(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,1));
%         [rPos(j), pPos(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,2));
%         [rPos(j), pPos(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,3));
%     end
%     rAll(4) = min(pPos);
%     for j = 1:3
%         [rProg(j), pProg(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,1));
%         [rProg(j), pProg(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,2));
%         [rProg(j), pProg(j)] = corr(srExcSm(:,belongs4(i)), srInpSm(:,3));
%     end 
%     rAll(5) = min(pProg);
% %     rAll(:)
% %     min(rAll)
%     if min(rAll) == min(pHD)
%         rHeadDir(i) = true;
%         rLinVel(i) = false;
%         rAngVel(i) = false;
%         rPosition(i) = false;
%         rProgression(i) = false;
%     elseif min(rAll) == min(pAV)
%         rHeadDir(i) = false;
%         rLinVel(i) = false;
%         rAngVel(i) = true;
%         rPosition(i) = false;
%         rProgression(i) = false;
%     elseif min(rAll) == min(pLV)
%         rHeadDir(i) = false;
%         rLinVel(i) = true;
%         rAngVel(i) = false;
%         rPosition(i) = false;
%         rProgression(i) = false;
%     elseif min(rAll) == min(pPos)
%         rHeadDir(i) = false;
%         rLinVel(i) = false;
%         rAngVel(i) = false;
%         rPosition(i) = true;
%         rProgression(i) = false;
%     elseif min(rAll) == min(pProg)
%         rHeadDir(i) = false;
%         rLinVel(i) = false;
%         rAngVel(i) = false;
%         rPosition(i) = false;
%         rProgression(i) = true;
%     else
%         disp('if no correl is highest, something is the matter');
%     end
% %     pause
% end

% figure;
% percentHD = (sum(rHeadDir)/total4) * 100;
% disp([num2str(percentHD),'% are most response to head direction']);
% percentLV = (sum(rLinVel)/total4) * 100;
% disp([num2str(percentLV),'% are most response to linear velocity']);
% percentAV = (sum(rAngVel)/total4) * 100;
% disp([num2str(percentAV),'% are most response to angular velocity']);
% percentPos = (sum(rPosition)/total4) * 100;
% disp([num2str(percentPos),'% are most response to position']);
% percentProg = (sum(rProgression)/total4) * 100;
% disp([num2str(percentProg),'% are most response to progression']);

total2 = length(belongs2);
for i = 1:length(belongs2)
    for j = 1:4
        [rHD(j), pHD(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,1));
        [rHD(j), pHD(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,2));
        [rHD(j), pHD(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,3));
        [rHD(j), pHD(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,4));
    end
    rAll(1) = min(pHD);
    for j = 1:4
        [rAV(j), pAV(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,1));
        [rAV(j), pAV(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,2));
        [rAV(j), pAV(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,3));
        [rAV(j), pAV(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,4));
    end
    rAll(2) = min(pAV);
    for j = 1:5
        [rLV(j), pLV(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,1));
        [rLV(j), pLV(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,2));
        [rLV(j), pLV(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,3));
        [rLV(j), pLV(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,4));
        [rLV(j), pLV(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,5));
    end
    rAll(3) = min(pLV);
    for j = 1:3
        [rPos(j), pPos(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,1));
        [rPos(j), pPos(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,2));
        [rPos(j), pPos(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,3));
    end
    rAll(4) = min(pPos);
    for j = 1:3
        [rProg(j), pProg(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,1));
        [rProg(j), pProg(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,2));
        [rProg(j), pProg(j)] = corr(srExcSm(:,belongs2(i)), srInpSm(:,3));
    end 
    rAll(5) = max(pProg);
%     rAll(:)
%     min(rAll)
    if max(rAll) == max(pHD)
        rHeadDir(i) = true;
        rLinVel(i) = false;
        rAngVel(i) = false;
        rPosition(i) = false;
        rProgression(i) = false;
    elseif max(rAll) == max(pAV)
        rHeadDir(i) = false;
        rLinVel(i) = false;
        rAngVel(i) = true;
        rPosition(i) = false;
        rProgression(i) = false;
    elseif max(rAll) == max(pLV)
        rHeadDir(i) = false;
        rLinVel(i) = true;
        rAngVel(i) = false;
        rPosition(i) = false;
        rProgression(i) = false;
    elseif max(rAll) == max(pPos)
        rHeadDir(i) = false;
        rLinVel(i) = false;
        rAngVel(i) = false;
        rPosition(i) = true;
        rProgression(i) = false;
    elseif max(rAll) == max(pProg)
        rHeadDir(i) = false;
        rLinVel(i) = false;
        rAngVel(i) = false;
        rPosition(i) = false;
        rProgression(i) = true;
    else
        disp('if no correl is highest, something is the matter');
    end
%     pause
end

figure;
percentHD = (sum(rHeadDir)/total2) * 100;
disp([num2str(percentHD),'% are most response to head direction']);
percentLV = (sum(rLinVel)/total2) * 100;
disp([num2str(percentLV),'% are most response to linear velocity']);
percentAV = (sum(rAngVel)/total2) * 100;
disp([num2str(percentAV),'% are most response to angular velocity']);
percentPos = (sum(rPosition)/total2) * 100;
disp([num2str(percentPos),'% are most response to position']);
percentProg = (sum(rProgression)/total2) * 100;
disp([num2str(percentProg),'% are most response to progression']);

x = [percentHD percentLV percentAV percentPos percentProg];
labels = {'Head Direction','LinearVelocity','Angular Velocity', 'Position','Progression'};
pie(x,labels);

x = [percentHD percentLV percentAV percentPos percentProg];
labels = {'Head Direction','LinearVelocity','Angular Velocity', 'Position','Progression'};
pie(x,labels);
title('Most Preferred Stimuli');
legend('Position', 'Linear Velocity', 'Location', 'Southeast');
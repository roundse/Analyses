for i = 1:4 (angular)
    for j = 1:109 (all exc. neurons)
    [r(i), p(i)] = corr(srExcSm(:,i), srHDSm(:,1));
end
[k, indecesHD1] = find(p<.05);

end
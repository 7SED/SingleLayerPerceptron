function T=evalnet(P,w,b)

% T = Targets
% P = Input
% w = weight
% b = bias

T=hardlimit(w*P+b);
% Submitted by Harshit Maurya %
% Roll number: 22126022 %
% Topic: Feature Normalisation % 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Min-Max scaling function %
function scaled_data = minMaxScaling(data)
    minVal = min(data);
    maxVal = max(data);
    scaled_data = (data - minVal) / (maxVal - minVal);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
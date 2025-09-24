%_________________________________________________________________
% Author: Mahsa Yousefi (2021)
%_________________________________________________________________
function [total_number,number_of_parameters_per_layer] = find_num_parameters(dlnet)
layers = dlnet.Learnables.Value;
num_layers = size(layers,1);
total_number = 0;
for i = 1:num_layers
   total_number = total_number + prod(size(layers{i}));
end
end

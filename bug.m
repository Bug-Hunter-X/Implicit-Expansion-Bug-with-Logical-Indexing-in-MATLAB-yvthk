function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to implicit expansion
% with logical indexing.

if input > 5
  result = input .* [1,2,3]; % Implicit expansion works fine here
else
  index = input > 2; 
  result = input(index) .* [1,2,3]; % Implicit expansion fails here if input is a scalar
end
end
function result = myFunctionSolution(input)
% This function provides a solution to the implicit expansion bug
% demonstrated in myFunction.m.

if input > 5
  result = input .* [1,2,3]; % Implicit expansion works fine here
else
  index = input > 2;
  if isempty(index)  %Check for empty index before implicit expansion
      result = [];  % Handle the empty case explicitly
  else
      result = input(index) .* [1,2,3];
  end
end
end
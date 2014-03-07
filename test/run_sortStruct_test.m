
  %% run_spec
  clear;
  %% Clear import list to test correct library
  clear import; 

%   %% For Packages
%   %    Add package to path (+function folder must be on path)
%   addpath('../package/');
% 
%   %    Import functions 
%   import padarray_pkg.* 

  %% For Functions
  %    Add function to path
  addpath('../function/');

  %% The tests
  error_count = 0;
  pass_count  = 0;

  A = struct('name', {1,2,3,4}, 'value', {5,2,3,1});
  B = sortStruct(A, 'value');
  expect = struct('name', {4,2,3,1}, 'value', {1,2,3,5});
  if (  ~isequal(B, expect)  )
    disp('sortStruct() Failed ')
    error_count = error_count + 1;
  else
    pass_count  = pass_count  + 1;
  end

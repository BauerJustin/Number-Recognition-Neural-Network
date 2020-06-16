clear; close all; clc 

% load data set and weight files
load('data.mat');
load('weights.mat');

% size of data set
num_size = size(X, 1);

% display grid of 100 data examples 
number_grid = randperm(size(X, 1));
number_grid = number_grid(1:100);
displayData(X(number_grid, :));
fprintf('Sample data. Press enter to continue.\n');
pause;

% randomize order of data set
order = randperm(num_size);

% loop though entire data set
for i = 1:num_size
    
    % display image
    fprintf('\nImage displayed');
    displayData(X(order(i), :));

    % make neural network prediction
    prediction = network(Theta1, Theta2, X(order(i),:));
    fprintf('\nPrediction: %d\n', prediction);
    
    % pause so user can see prediction
    fprintf('Press enter to continue...\n');
    pause;
end
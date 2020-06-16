function prediction = network(Theta1, Theta2, X)
    % returns neural network prediction
    
    % size of data set
    num_size = size(X, 1);
    
    % layer 1 of neural network
    layer_1 = sigmoid([ones(num_size, 1) X] * Theta1');
    
    % layer 2 of neural network
    layer_2 = sigmoid([ones(num_size, 1) layer_1] * Theta2');
    
    % find max value index corresponding to predicted number
    [value, index] = max(layer_2, [], 2);
    
    % return prediction (if index is 10, prediction is actually 0)
    if index == 10
        prediction = 0;
    else
        prediction = index;
    end
end

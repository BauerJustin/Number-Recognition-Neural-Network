function g = sigmoid(z)
    % mathematical function having a characteristic "S"-shaped curve or sigmoid curve
    g = 1.0 ./ (1.0 + exp(-z));
end

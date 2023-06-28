% To load data


load azip

A = azip;

load dzip

D = dzip;

load testzip

Test = testzip;

load dtest

D_test = dtest;

D = categorical(D);
A_im = zeros(16, 16, length(A));

parfor i = 1:length(A)
    A_im(:,:,i) = ima2(A(:, i));

end
layers = [
    imageInputLayer([28 28 1]) % Input layer for the 28x28 grayscale images
    fullyConnectedLayer(100) % Hidden layer with 100 neurons
    reluLayer % ReLU activation function
    fullyConnectedLayer(10) % Output layer with 10 neurons (one for each digit)
    softmaxLayer % Softmax activation function for classification
    classificationLayer % Classification layer
];
options = trainingOptions('adam', ...
    'MaxEpochs', 10, ...
    'MiniBatchSize', 128, ...
    'Plots', 'training-progress');
net = trainNetwork(transpose(A), transpose(D), layers, options); % Train the MLP

% Test the MLP
Y_pred = classify(net, Test); % Predict the labels for the testing images
accuracy = sum(Y_pred == D_Test) / numel(D_Test); % Compute the classification accuracy
fprintf('Classification accuracy: %f\n', accuracy);



function a1 =ima2(A)
% Translate vector to become nonnegative
% Scale to interval [0,20]
% Reshape the vector as a matrix and then show image

a1=squeeze(A);  
a1=reshape(a1,16,16)';  

a1=(a1-min(min(a1))*ones(size(a1)));
a1=(20/max(max(a1)))*a1;

mymap1 =[1.0000    1.0000    1.0000
    0.8715    0.9028    0.9028
    0.7431    0.8056    0.8056
    0.6146    0.7083    0.7083
    0.4861    0.6111    0.6111
    0.3889    0.4722    0.5139
    0.2917    0.3333    0.4167
    0.1944    0.1944    0.3194
    0.0972    0.0972    0.1806
         0         0    0.0417];
colormap(mymap1)

image(a1)
end
% To load data


load azip

A = azip;

load dzip

D = dzip;

load testzip

Test = testzip;

load dtest

D_test = dtest;


target = zeros([10,1707]);
target_test = zeros([10,2007]);
for i = 1:1707
target(D(i)+1,i) = 1;
end
for i = 1:2007
target_test(D_test(i)+1,i) = 1;
end


hiddenLayerSize = 10;
net = newff(A,target,hiddenLayerSize);
net.layers{1}.transferFcn = 'tansig';
net.layers{2}.transferFcn = 'softmax';

[net,tr] = train(net,A,target);

testOutputs = sim(net,Test);
testPerformance = perform(net,target_test,testOutputs);

%net=newff(A,D,10);
%net = train(net,A,D); 


testPredLabels = vec2ind(testOutputs);
testTrueLabels = vec2ind(Test);
C = confusionmat(testTrueLabels,testPredLabels);
confusionchart(C);






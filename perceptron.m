%Ayberk Deringöz 21994890

zero = [0 1 1 1 0
        1 0 0 0 1
        1 0 0 0 1
        1 0 0 0 1
        1 0 0 0 1
        1 0 0 0 1
        0 1 1 1 0];
one = [0 0 1 0 0
       0 1 1 0 0
       1 0 1 0 0
       0 0 1 0 0
       0 0 1 0 0
       0 0 1 0 0
       0 0 1 0 0];

two = [0 1 1 1 0
       1 0 0 0 1
       0 0 0 1 0
       0 0 1 0 0
       0 1 0 0 0
       1 0 0 0 0
       1 1 1 1 1];

three = [1 1 1 1 0
         0 0 0 0 1
         0 0 0 1 0
         0 1 1 0 0
         0 0 0 1 0
         0 0 0 0 1
         1 1 1 1 0];

four = [0 0 0 1 0
        0 0 1 1 0
        0 1 0 1 0
        1 0 0 1 0
        1 1 1 1 1
        0 0 0 1 0
        0 0 0 1 0];

five = [1 1 1 1 1
        1 0 0 0 0
        1 1 1 1 0
        0 0 0 0 1
        0 0 0 0 1
        1 0 0 0 1
        0 1 1 1 0];
six = [0 1 1 1 1
       1 0 0 0 0
       1 0 0 0 0
       1 1 1 1 0
       1 0 0 1 0
       1 0 0 0 1
       0 1 1 1 0];
seven = [1 1 1 1 1
         0 0 0 0 1
         0 0 0 1 0
         0 0 1 0 0
         0 1 0 0 0
         1 0 0 0 0
         1 0 0 0 0];

eight = [0 1 1 1 0
         1 0 0 0 1
         1 0 0 0 1
         0 1 1 1 0
         1 0 0 0 1
         1 0 0 0 1
         0 1 1 1 0];
nine = [0 1 1 1 0
        1 0 0 0 1
        1 0 0 0 1
        0 1 1 1 1
        0 0 0 0 1
        1 0 0 0 1
        0 1 1 1 0];

zero_test = [1 1 1 1 1
 1 0 0 0 1
 1 0 0 1 1
 1 0 1 0 1
 1 1 0 0 1
 1 0 0 0 1
 1 1 1 1 1];

one_test = [0 0 1 1 0
 0 1 1 1 0
 1 0 1 1 0
 0 0 1 1 0
 0 0 1 1 0
 0 0 1 1 0
 0 0 1 1 0];

two_test = [1 1 1 1 1
 0 0 0 0 1
 1 1 1 1 1
 1 0 0 0 0
 1 1 1 1 1
 1 0 0 0 0
 1 1 1 1 1];

three_test = [1 1 1 1 1
 0 0 0 0 1
 1 1 1 1 1
 0 0 0 0 1
 0 0 0 0 1
 0 0 0 0 1
 1 1 1 1 1];

four_test = [1 0 0 1 0
 1 0 0 1 0
 1 0 0 1 0
 1 1 1 1 1
 0 0 0 1 0
 0 0 0 1 0
 0 0 0 1 0];

five_test = [1 1 1 1 1
 1 0 0 0 0
 1 1 1 1 1
 0 0 0 0 1
 0 0 0 0 1
 0 0 0 0 1
 1 1 1 1 1];
six_test = [1 1 1 1 1
 1 0 0 0 0
 1 1 1 1 1
 1 0 0 0 1
 1 1 1 1 1
 1 0 0 0 1
 1 1 1 1 1];

seven_test = [1 1 1 1 1
 0 0 0 0 1
 0 0 0 1 0
 0 0 1 0 0
 0 1 0 0 0
 1 0 0 0 0
 1 0 0 0 0];

eight_test = [1 1 1 1 1
 1 0 0 0 1
 1 1 1 1 1
 1 0 0 0 1
 1 1 1 1 1
 1 0 0 0 1
 1 1 1 1 1];

nine_test = [1 1 1 1 1
 1 0 0 0 1
 1 1 1 1 1
 0 0 0 0 1
 0 0 0 0 1
 0 0 0 0 1
 1 1 1 1 1];

...training flatten
flatten_zero = reshape(zero,[35,1]);
flatten_one = reshape(one,[35,1]);
flatten_two = reshape(two,[35,1]);
flatten_three = reshape(three,[35,1]);
flatten_four = reshape(four,[35,1]);
flatten_five = reshape(five,[35,1]);
flatten_six = reshape(six,[35,1]);
flatten_seven = reshape(seven,[35,1]);
flatten_eight = reshape(eight,[35,1]);
flatten_nine = reshape(nine,[35,1]);

...test flatten
flatten_zero_test = reshape(zero_test,[35,1]);
flatten_one_test = reshape(one_test,[35,1]);
flatten_two_test = reshape(two_test,[35,1]);
flatten_three_test = reshape(three_test,[35,1]);
flatten_four_test = reshape(four_test,[35,1]);
flatten_five_test = reshape(five_test,[35,1]);
flatten_six_test = reshape(six_test,[35,1]);
flatten_seven_test = reshape(seven_test,[35,1]);
flatten_eight_test = reshape(eight_test,[35,1]);
flatten_nine_test = reshape(nine_test,[35,1]);

labels = [0 1 2 3 4 5 6 7 8 9];
label_names = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];
training_set = [flatten_zero, flatten_one, flatten_two, flatten_three, flatten_four, flatten_five, flatten_six, flatten_seven, flatten_eight, flatten_nine];
test_set = [flatten_zero_test, flatten_one_test, flatten_two_test, flatten_three_test, flatten_four_test, flatten_five_test, flatten_six_test, flatten_seven_test, flatten_eight_test, flatten_nine_test];




learning_rate = 0.1;
num_iterations = 1000;
weights = randn(size(training_set, 1), 10)*0.1;


for digit = 0:9
    digit_labels = (labels == digit);
    
    for i = 1:num_iterations
        for j = 1:size(training_set, 2)
            
            dot_product = dot(weights(:, digit+1), training_set(:, j));
            
            if dot_product >= 0
                predicted_output = 1;
            else
                predicted_output = 0;
            end
            

            if predicted_output ~= digit_labels(j)
                weights(:, digit+1) = weights(:, digit+1) + learning_rate * (digit_labels(j) - predicted_output) * training_set(:, j);
            end
        end
    end
end

%Örnek olarak flatten_two_test verdim, diğer değerler denenebilir.
corrupted_value = flatten_four_test;
digit_scores = weights' * corrupted_value;
[~, predicted_digit] = max(digit_scores);

fprintf('Tahmin edilen değer %d\n', predicted_digit - 1);
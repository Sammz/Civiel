clear, clc

% max
% find
% min
% sort(columns) and sortrows
% length
% sum
% mean
% prod
% any
% all


format shortG
grades = [3  6.3 7.5 6.2 8.4
          6  8.2 5.7 6.5 6.8
          8  6   6.1 8.5 8.6
          11 7.8 9.4 7.4 7.4
          21 8.2 6.4 8   7.2
          25 6.1 6.2 6.6 6.5]
      
[mini, i] = min(grades(:, 2))
Snr = grades(i, 1)

ii  = sum(grades(:,4)>grades(:,5))

iii = grades(find(grades(:,3)<7), 1)

iv_1 = any(grades(:, 3)>9)
iv_2 = all(grades(1, :)>7)

grades = grades([1 2 3 4 4 5], :)
grades(5,:) = [10 7.8 7.0 7.2 6.2]

vi  = mean(grades((grades(:,1)==11),2:end))

means_Students = mean(grades(:,2:end),2)
grades_with_mean = grades
grades_with_mean(:,6) = means_Students

means_subjects = [NaN mean(grades_with_mean(:,2:end))]
grades_with_mean(7,:) = means_subjects

headings = {'Snr', 'Dut', 'Eng', 'Math', 'Phy', 'Mean'};
disp(array2table(grades_with_mean, 'VariableNames', headings))

newheadings = {'Snr', 'Dut', 'Eng', 'Math', 'Phy'};
gwm = array2table(grades, 'VariableNames', newheadings)
gwm.mean = mean(gwm{:,2:end},2)








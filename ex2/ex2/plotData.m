function plotData(X, y)
data = load('ex2data1.txt');
admitted = find(data(:, 3) == 1);
notAdmitted = find(data(:, 3) == 0);
plot(data(admitted, 1), data(admitted, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
hold on;
plot(data(notAdmitted, 1), data(notAdmitted, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
xlabel('Exam 1 score');
ylabel('Exam 2 score');
legend('Admitted', 'Not Admitted');
hold off;
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%









% =========================================================================



hold off;

end

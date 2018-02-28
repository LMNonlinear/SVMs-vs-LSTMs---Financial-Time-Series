%% Comparison of Support Vector Machines and Long Short-Term Memory Neural Networks on NYSE Stock Prediction

%% Initialisation
clear ; close all; clc
format compact; %Suppress the display of blank lines
rng default;    %Ensure repeatable results

%% Load data
% 1) date
% 2) symbol
% 3) open
% 4) close
% 5) low
% 6) high
% 7) volume

T = readtable('nyse/prices-split-adjusted.csv');
T.Properties.VariableNames = {'date' 'symbol' 'open' 'close' 'low' 'high' 'volume'};

head(T,5) % view first 5 rows

% confirm there are no missing values
nMissing = sum(sum(ismissing(T)));
fprintf('Number of missing values = %i\n', nMissing)

%% Visual exploration of data and preparation for time series forecasting task










%{
%% Extension: Use PCA to transform factors
% 
% Standardise variables and perform PCA
Z = zscore(X);
%X = Z(:,1:...);
[coeff,score,latent,~,explained,~] = pca(Z);
% Plot explained variance of first ... factors
bar(explained(1:...)); title('Explained variance for PCA factors'); ylabel('R squared'); xlabel('Factor #');
h=gca; h.XTick = 1:...;
%}

% Future work: calculate Bias?variance tradeoff error rate ???
% (= equivalent to Bayesian Error Rate for classification tasks ???)



%% Create training and test sets, and cross validation folds
% Split data into training set (70%) and test set (30%) using stratified sampling
% Note this does not prevent the introduction of statistical bias


%% Support Vector Machine (SVM)






%% Long Short-Term Memory Neural Network (LSTM)







%% Compare performance of LR and RF algorithms



% Future work:
% - Calibrate probabilities to improve model performance
% - Perform significance test for SMV vs LSTM model performance
% - Compare model results against Bias?variance tradeoff error rate ???
% (= equivalent to Bayesian Error Rate for classificaiton tasks???)



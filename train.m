clc
clear all
close all
warning off
x=readtable('train.csv');
labels=x(:,1);
trainingFeatures=[];
trainingLabels=labels;       
image_pixels=(x(:,2:end));
cnames=string(image_pixels.Properties.VariableNames);
image_pixels=table2array(x(:,2:end));
for i=1:42000
ms=imbinarize(uint8(reshape(image_pixels(i,:),[28,28])'));
trainingFeatures(i,:)=extractHOGFeatures(ms,'CellSize',[8 8]);
end
Classifier=fitcecoc(trainingFeatures,table2array(trainingLabels));
save Classifier Classifier;

clc
clear all
close all
warning off
load Classifier;
x=readtable('test.csv');
cnames=x.Properties.VariableNames;
image_pixels=table2array(x);
Label=[];
for mjks=1:28000
img=imbinarize(uint8(reshape(image_pixels(mjks,:),[28,28])'));
[Features]=extractHOGFeatures(img,'CellSize',[8 8]);
PredictedClass=(predict(Classifier,Features));
Label=[Label;PredictedClass];
end
k=(1:28000)';
output=[k Label];
op=array2table(output,'VariableNames',{'ImageId','Label'});
writetable(op,'Upload.csv','Delimiter',',');

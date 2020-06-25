init_data = load('vehicleTrainingData.mat');
X = init_data.vehicleTrainingData;

dataDir = fullfile(toolboxdir('vision'),'visiondata');
X.imageFilename = fullfile(dataDir,X.imageFilename);

rng(0);
shuffledIds = randperm(height(X));
X = X(shuffledIds,:);

imds = imageDatastore(X.imageFilename);

blds = boxLabelDatastore(X(:,2:end));

dataStore = combine(imds, blds);
neural_network = load('yolov2VehicleDetector.mat');
layer_graph = neural_network.lgraph;

layer_graph.Layers

options = trainingOptions('adam',...
          'InitialLearnRate',0.001,...
          'Verbose',true,...
          'MiniBatchSize',16,...
          'MaxEpochs',30,...
          'Shuffle','never',...
          'VerboseFrequency',30,...
          'CheckpointPath',tempdir);
      
[model,info] = trainYOLOv2ObjectDetector(dataStore,layer_graph,options);

model


figure
plot(info.TrainingLoss)
grid on
xlabel('Iterations')
ylabel('Training Loss')

img = imread('cars.jpg');
[boxes,scores] = detect(model,img);
if(~isempty(boxes))
    img = insertObjectAnnotation(img,'rectangle',boxes,scores);
end
figure
imshow(img)

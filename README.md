# YOLO Object Detection with MATLAB




The Following Script is a short and simple implementation of the YOLO algorithm using pre-built MATLAB architectures. Heavily inspired by this [project](https://in.mathworks.com/help/vision/examples/object-detection-using-yolo-v3-deep-learning.html)



# Model Architecture
The following architecture was used in the project

     1   'input'               Image Input                128x128x3 images
     2   'conv_1'              Convolution                16 3x3 convolutions with stride [1  1] and padding [1  1  1  1]
     3   'BN1'                 Batch Normalization        Batch normalization
     4   'relu_1'              ReLU                       ReLU
     5   'maxpool1'            Max Pooling                2x2 max pooling with stride [2  2] and padding [0  0  0  0]
     6   'conv_2'              Convolution                32 3x3 convolutions with stride [1  1] and padding [1  1  1  1]
     7   'BN2'                 Batch Normalization        Batch normalization
     8   'relu_2'              ReLU                       ReLU
     9   'maxpool2'            Max Pooling                2x2 max pooling with stride [2  2] and padding [0  0  0  0]
    10   'conv_3'              Convolution                64 3x3 convolutions with stride [1  1] and padding [1  1  1  1]
    11   'BN3'                 Batch Normalization        Batch normalization
    12   'relu_3'              ReLU                       ReLU
    13   'maxpool3'            Max Pooling                2x2 max pooling with stride [2  2] and padding [0  0  0  0]
    14   'conv_4'              Convolution                128 3x3 convolutions with stride [1  1] and padding [1  1  1  1]
    15   'BN4'                 Batch Normalization        Batch normalization
    16   'relu_4'              ReLU                       ReLU
    17   'yolov2Conv1'         Convolution                128 3x3 convolutions with stride [1  1] and padding 'same'
    18   'yolov2Batch1'        Batch Normalization        Batch normalization
    19   'yolov2Relu1'         ReLU                       ReLU
    20   'yolov2Conv2'         Convolution                128 3x3 convolutions with stride [1  1] and padding 'same'
    21   'yolov2Batch2'        Batch Normalization        Batch normalization
    22   'yolov2Relu2'         ReLU                       ReLU
    23   'yolov2ClassConv'     Convolution                24 1x1 convolutions with stride [1  1] and padding [0  0  0  0]
    24   'yolov2Transform'     YOLO v2 Transform Layer.   YOLO v2 Transform Layer with 4 anchors.
    25   'yolov2OutputLayer'   YOLO v2 Output             YOLO v2 Output with 4 anchors.

# Model Training Summary
The model training graph is show below
![Training Loss over Epochs](https://github.com/DhananjayAshok/MATLAB-YOLO-ObjectDetection/blob/master/Training.jpg?raw=true)

# Model Performance Testing
An example of the models performance is given post training, with the following test case
![Input Image](https://github.com/DhananjayAshok/MATLAB-YOLO-ObjectDetection/blob/master/cars.jpg?raw=true)

![Model Output](https://github.com/DhananjayAshok/MATLAB-YOLO-ObjectDetection/blob/master/prediction.jpg?raw=true)



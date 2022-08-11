import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';
import 'package:tflite_insects_classifications/classifier.dart';

class ClassifierQuant extends Classifier {
  ClassifierQuant({int numThreads = 2}) : super(numThreads: numThreads);

  @override
  //String get modelName => 'model.tflite';
  String get modelName => 'insects_model.tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(0, 1);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 255);
}

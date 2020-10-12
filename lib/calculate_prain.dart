import 'dart:math';

class CalculateBrain {
  CalculateBrain({
    this.height,
    this.weight,
  });

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you have a higher thane normal body weight ';
    } else if (_bmi > 18.5) {
      return 'you have a normal body';
    } else {
      return 'you have a lower than normal body weight';
    }
  }
}

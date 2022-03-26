import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  static double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return '体重が標準を超えてしまっtいるよ。運動や食事に気をつけて！';
    } else if (_bmi >= 18.5) {
      return '標準的な体型です。維持していこう！';
    } else {
      return '体重が標準を下回っているね。運動や食事に気をつけて！';
    }
  }
}

import 'dart:math';

class BMICalculation {
  final int _height;
  final int _weight;
  double? _bmi;

  BMICalculation(this._height, this._weight);

  String caculateBmi() {
    _bmi = _weight / pow(_height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String result() {
    if (_bmi! >= 25) {
      return "Ovwerweight";
    } else if (_bmi! > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return "You have a higher than normal body weight, try to exercise more"
          ". ";
    } else if (_bmi! > 18.5) {
      return "You have a normal body, Great job!.";
    } else {
      return "You have a lower than normal body weight, you can eat a bit  "
          "more.";
    }
  }
}

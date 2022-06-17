import 'dart:math';
class CalculatorBrain{
  double _bmi=0;
  CalculatorBrain({required this.height,required this.weight});
  final int height;
  final int weight;


  String calculateBMI(){
    _bmi=weight/pow(height/100, 2);
    String ans=_bmi.toStringAsFixed(1);
    return ans;
  }
  String getResult(){
    if(_bmi>=25){
      return 'OverWeight';
    } else if(_bmi>18.5){
      return 'Normal';
    } else{
      return 'UnderWeight';
    }
  }
  String getInterPretation(){
    if(_bmi>=25){
      return 'Your BMI indicates that you are Overweight,Your calorie intake must be less than that required for your daily activities.';
    } else if(_bmi>18.5){
      return 'Your BMI indicates that your weight is Normal! Congratulations for maintaining an healthy weight!';
    } else{
      return 'Your BMI indicates that you are UnderWeight, Focus on muscle toning and resistance training exercises.';
    }
  }
 }

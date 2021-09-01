import 'dart:math';

class BmiCalculator {
  int weight=1;
  int height=1;
  double bmi=1;
  String desc='';
  String WeightClass='';
  BmiCalculator(int weight,int height){
    this.weight=weight;
    this.height=height;
  }
  calculateBmi(){
    this.bmi= this.weight/pow((this.height)/100, 2);
    if(this.bmi<18.5) {
      this.WeightClass='UNDERWEIGHT';
      this.desc = 'You are Underweight 😟. Don\'t worry we can improve this 😊';
    }
    else if(this.bmi >=18.5 && this.bmi<=24.9) {
      this.WeightClass='NORMAL';
      this.desc = 'You have a normal weight. Keep it up ✌😃😃';
    }
    else if(this.bmi>25 && this.bmi<=29.9) {
      this.WeightClass='OverWeight';
      this.desc = 'You have a higher than normal weight . Try to exercise more 😊😊';
    }
    else {
      this.WeightClass='Obese';
      this.desc='You are Obese . Look after your body dude 😂😂';
    }
  }
}
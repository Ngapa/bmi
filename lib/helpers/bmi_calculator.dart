import 'package:bmi/contains/constans.dart';

class BmiCalculator {
  int? height;
  int? weight;
  double? bmi;
  String? bmiCategory;
  String? bmiDescription;

  BmiCalculator({required this.height, required this.weight});
  BmiCalculator.fromBmiValue(this.bmi) {}

  double hitungBMI() {
    double heighInMeter = height! / 100;

    // final pow(height, 2)
    final h = (heighInMeter * heighInMeter);
    bmi = weight! / h;

    return bmi!;
  }

  String determineBmiCategory() {
    String category = "";
    if (bmi! < 16.0) {
      category = underweightSevere;
    } else if (bmi! < 17) {
      category = underweightModerate;
    } else if (bmi! < 18.5) {
      category = underweightMild;
    } else if (bmi! < 25.0) {
      category = normal;
    } else if (bmi! < 30) {
      category = overWeight;
    } else if (bmi! < 35) {
      category = obeseI;
    } else if (bmi! < 40) {
      category = obeseII;
    } else if (bmi! >= 40) {
      category = obeseIII;
    }
    bmiCategory = category;
    return bmiCategory!;
  }

  String saranBmi() {
    String desc = "";
    switch (bmiCategory!) {
      case underweightSevere:
      case underweightModerate:
      case underweightMild:
        desc = "Possible nutritional deficiency and osteoporosis";
        break;
      case normal:
        desc = "Low Risk (healty range).";
        break;
      case overWeight:
        desc = "Moderate risk of developing heart disease, high blood pressure";
        break;
      case obeseI:
      case obeseII:
      case obeseIII:
        desc = "High risk of developing heart disease, high blood pressure";
        break;
      default:
    }
    bmiDescription = desc;
    return bmiDescription!;
  }
}

import "dart:io";

void main() {
  StudentGradeCalculator();

}

class StudentGradeCalculator{
  print(""" ==========================================
| \t * Student Marksheet         \t   |
 ==========================================""");

  print("| * Enter student name : ");
  String? name = stdin.readLineSync();

  print("| * Enter student roll no : ");
  num? rollNo = num.parse(stdin.readLineSync()!);

  print("| * Enter student class : ");
  num? classNo = num.parse(stdin.readLineSync()!);

  print("| * Enter physics numbers : ");
  num? phy = num.parse(stdin.readLineSync()!);

  print("| * Enter enlgish numbers : ");
  int? eng = int.parse(stdin.readLineSync()!);

  print("| * Enter mathematics numbers : ");
  int? math = int.parse(stdin.readLineSync()!);

  print("| * Enter chemistry numbers : ");
  int? che = int.parse(stdin.readLineSync()!);

  print("| * Enter computer numbers : ");
  int? comp = int.parse(stdin.readLineSync()!);
  num obtainMarks = phy + eng + math + che + comp;
  num result = obtainMarks * 100 / 500;

  if (result >= 80 && result <= 100) {
    print(
        """==========================================\n| * Student Name \t : ${name} \t |\n| * Student Roll Number  : ${rollNo} \t |\n| * Student Class \t : ${classNo}  \t\t |\n| * Percentage  \t : ${result}  \t |\n| * Grade \t\t : A1 \t\t |\n==========================================""");
  } else if (result >= 70 && result <= 79) {
    print(
        """==========================================\n| * Student Name \t : ${name} \t |\n| * Student Roll Number  : ${rollNo} \t |\n| * Student Class \t : ${classNo}  \t\t |\n| * Percentage  \t : ${result}  \t |\n| * Grade \t\t : A  \t\t |\n==========================================""");
  } else if (result >= 60 && result <= 69) {
    print(
        """==========================================\n| * Student Name \t : ${name} \t |\n| * Student Roll Number  : ${rollNo} \t |\n| * Student Class \t : ${classNo}  \t\t |\n| * Percentage  \t : ${result}  \t |\n| * Grade \t\t : B  \t\t |\n==========================================""");
  } else if (result >= 50 && result <= 59) {
    print(
        """==========================================\n| * Student Name \t : ${name} \t|\n| * Student Roll Number  : ${rollNo}  \t |\n| * Student Class \t : ${classNo}  \t\t |\n| * Percentage  \t : ${result}  \t |\n| * Grade \t\t : C  \t\t |\n==========================================""");
  } else if (result >= 40 && result <= 49) {
    print(
        """==========================================\n| * Student Name \t : ${name} \t|\n| * Student Roll Number  : ${rollNo}  \t|\n| * Student Class \t : ${classNo}  \t\t  |\n| * Percentage  \t : ${result}  \t |\n| * Grade \t\t : D  \t\t |\n==========================================""");
  } else {
    print(
        """==========================================\n| * Student Name \t : ${name} \t|\n| * Student Roll Number  : ${rollNo}  \t|\n| * Student Class \t : ${classNo}  \t\t  |\n| * Percentage  \t : ${result}  \t |\n| * Grade \t\t : Fail  \t |\n==========================================""");
  }
}

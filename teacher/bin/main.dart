import 'teacher.dart';

void main(List<String> arguments) {
  //create instance of Teacher constructor
  var teacher = Teacher.cer(Certification.ba,
      name: 'ahmed', city: 'gaza', subject: 'programming');

  print(teacher.getAllAttributes());
}

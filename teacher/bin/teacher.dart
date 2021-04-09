enum Certification { diploma, ba, master, phd }

class Teacher {
  String name;
  String subject;
  String city;
  Certification certification;

  // //maian constructor
  // Teacher({this.name, this.city, this.subject, this.certification}) {
  //   print('def');
  // }

  //diploma constructor
  Teacher._diploma({this.name, this.city, this.subject, this.certification}) {
    print('diploma');
  }

  //ba constructor
  Teacher._ba({this.name, this.city, this.subject, this.certification}) {
    print('ba');
  }

  //master constructor
  Teacher._master({this.name, this.city, this.subject, this.certification}) {
    print('master');
  }

  //phd constructor
  Teacher._phd({this.name, this.city, this.subject, this.certification}) {
    print('phd');
  }

  //teacher data function return map
  Map getAllAttributes() {
    return {
      'name': name,
      'city': city,
      'certification': certification == Certification.ba
          ? 'Bachelor'
          : certification == Certification.diploma
              ? 'Diploma'
              : certification == Certification.master
                  ? 'Master'
                  : 'phd',
      'subject': subject
    };
  }

  factory Teacher.cer(Certification certification,
      {String name, String city, String subject}) {
    if (certification == Certification.diploma) {
      return Teacher._diploma(
          name: name,
          city: city,
          subject: subject,
          certification: certification);
    } else if (certification == Certification.ba) {
      return Teacher._ba(
          name: name,
          city: city,
          subject: subject,
          certification: certification);
    } else if (certification == Certification.master) {
      return Teacher._master(
          name: name,
          city: city,
          subject: subject,
          certification: certification);
    } else {
      return Teacher._phd(
          name: name,
          city: city,
          subject: subject,
          certification: certification);
    }
  }
}

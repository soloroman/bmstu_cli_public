class Group {
  String name; // ИБМ1-22А
  String url;

  Group({this.name, this.url});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url
    };
  }

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      name: json['name'],
      url: json['url']
    );
  }
}

class Course {
  String course; // 1 курс
  List<Group> groups;

  Course({this.course, this.groups});

  Map<String, dynamic> toJson() {
    return {
      'course': course,
      'groups': groups
    };
  }

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      course: json['course'],
      groups: json['groups'].map((value)=> Group.fromJson(value)).toList()
    );
  }
}

class Departament {
  // Кафедра
  String name; // ИБМ1
  List<Course> courses;

  Departament({this.name, this.courses});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'courses': courses
    };
  }

  factory Departament.fromJson(Map<String, dynamic> json) {
    return Departament(
      name: json['name'],
      courses: json['courses'].map((value)=> Course.fromJson(value)).toList()
    );
  }
}

class Faculty {
  String shortName; // ИБМ
  String fullName; // Инженерный бизнес и менеджмент
  List<Departament> departaments;

  Faculty({this.shortName, this.fullName, this.departaments});


  Map<String, dynamic> toJson() {
    return {
      'shortName': shortName,
      'fullName': fullName,
      'departaments': departaments
    };
  }

  factory Faculty.fromJson(Map<String, dynamic> json) {
    return Faculty(
      shortName: json['shortName'],
      fullName: json['fullName'],
      departaments: json['departaments'].map((value)=> Departament.fromJson(value)).toList()
    );
  }
}

class FacultyTable {
  List<Faculty> faculties;

  FacultyTable({this.faculties});

  Map<String, dynamic> toJson() {
    return {
      'faculties': faculties
    };
  }

  factory FacultyTable.fromJson(Map<String, dynamic> json) {
    return FacultyTable(
      faculties: json['faculties'].map((value) => Faculty.fromJson(value)).toList()
    );
  }
}

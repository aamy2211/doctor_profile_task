class Student {
  int id;
  String name;
  int age;
  List<double> grades;

  Student(this.id, this.name, this.age, this.grades);

  double calculateAverage() {
    if (grades.isEmpty) return 0.0;
    double sum = grades.reduce((a, b) => a + b);
    return sum / grades.length;
  }
}

class StudentManager {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  void viewAllStudents() {
    if (students.isEmpty) {
      print("No students found.");
      return;
    }
    for (var s in students) {
      print("ID: ${s.id}, Name: ${s.name}, Age: ${s.age}, Grades: ${s.grades}");
    }
  }

  Student? findStudentById(int id) {
    try {
      return students.firstWhere((s) => s.id == id);
    } catch (e) {
      return null;
    }
  }

  void removeStudentById(int id) {
    int initialLength = students.length;
    students.removeWhere((s) => s.id == id);
    if (students.length < initialLength) {
      print("Student with ID $id removed successfully.");
    } else {
      print("Student with ID $id not found.");
    }
  }
}

void main() {
  StudentManager manager = StudentManager();

  manager.addStudent(Student(1, "Ahmed", 20, [85.0, 90.0, 78.0]));
  manager.addStudent(Student(2, "Sara", 22, [92.0, 88.0, 95.0]));
  manager.addStudent(Student(3, "Mona", 21, [70.0, 75.0, 80.0]));

  print("--- Initial Student List ---");
  manager.viewAllStudents();

  print("\n--- Searching for Student ID: 2 ---");
  var student = manager.findStudentById(2);
  if (student != null) {
    print("Found: ${student.name}");
    print("Average Grade: ${student.calculateAverage()}");
  }

  print("\n--- Removing Student ID: 1 ---");
  manager.removeStudentById(1);

  print("\n--- Updated Student List ---");
  manager.viewAllStudents();
}
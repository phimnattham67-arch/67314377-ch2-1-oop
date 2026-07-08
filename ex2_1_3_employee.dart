class Employee {
  String name;

  Employee(this.name);

  double calculateSalary() {
    return 0;
  }
}

class FullTimeEmployee extends Employee {
  double monthlySalary;

  FullTimeEmployee(String name, this.monthlySalary) : super(name);

  @override
  double calculateSalary() {
    return monthlySalary;
  }
}

class PartTimeEmployee extends Employee {
  double hours;
  double rate;

  PartTimeEmployee(String name, this.hours, this.rate) : super(name);

  @override
  double calculateSalary() {
    return hours * rate;
  }
}

void main() {
  List<Employee> employees = [
    FullTimeEmployee("Alice", 25000),
    PartTimeEmployee("Bob", 80, 150),
    FullTimeEmployee("Charlie", 30000),
  ];

  for (var employee in employees) {
    print("${employee.name} ได้รับเงินเดือน ${employee.calculateSalary()} บาท");
  }
}
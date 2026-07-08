class Temperature {
  double _celsius = 0;

  double get celsius => _celsius;

  set celsius(double value) {
    if (value >= -273.15) {
      _celsius = value;
    } else {
      print("อุณหภูมิต่ำกว่าศูนย์สัมบูรณ์ ไม่สามารถกำหนดได้");
    }
  }

  double get fahrenheit => _celsius * 9 / 5 + 32;
}

void main() {
  Temperature temp = Temperature();

  temp.celsius = 30;
  print("Celsius: ${temp.celsius}°C");
  print("Fahrenheit: ${temp.fahrenheit}°F");

  temp.celsius = -300; 

  print("Celsius: ${temp.celsius}°C");
  print("Fahrenheit: ${temp.fahrenheit}°F");
}
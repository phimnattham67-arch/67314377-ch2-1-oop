mixin Loggable {
  void log(String msg) {
    print("[${DateTime.now()}] $msg");
  }
}

class Stack<T> with Loggable {
  List<T> _items = [];

  void push(T item) {
    _items.add(item);
    log("เพิ่มข้อมูล: $item");
  }

  T? pop() {
    if (_items.isEmpty) {
      log("ไม่สามารถนำข้อมูลออกได้ เพราะ Stack ว่าง");
      return null;
    }

    T item = _items.removeLast();
    log("นำข้อมูลออก: $item");
    return item;
  }
}

void main() {
  Stack<String> stack = Stack<String>();

  stack.push("Apple");
  stack.push("Banana");
  stack.pop();
  stack.pop();
  stack.pop();
}
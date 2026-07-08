class Book {
  String title;
  String author;
  double price;

  Book(this.title, this.author, this.price);

  void showDetail() {
    print("ชื่อหนังสือ: $title");
    print("ผู้แต่ง: $author");
    print("ราคา: $price บาท");
    print("--------------------");
  }
}

void main() {
  Book book1 = Book(
      "Bridgerton เล่ม 3: An Offer From a Gentleman",
      "Julia Quinn",
      395.0);

  Book book2 = Book(
      "มาลับสามชาย",
      "ทมยันตี",
      320.0);

  book1.showDetail();
  book2.showDetail();
}
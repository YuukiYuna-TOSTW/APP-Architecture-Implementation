import 'package:app_structure_testing/model/book_model.dart';

class BookService {
  Future<List<Book>> fetchBooks() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      Book(title: "Genshin Impact", author: "MiHoYo"),
      Book(title: "Honkai Star Rail", author: "Hoyoverse"),
      Book(title: "Zenless Zone Zero", author: "Hoyolab")
    ];
  }
}
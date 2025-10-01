import 'package:flutter/foundation.dart';
import 'package:app_structure_testing/service/book_service.dart';
import 'package:app_structure_testing/model/book_model.dart';

class BookViewModel extends ChangeNotifier {

  final BookService _bookService = BookService();
  List<Book> _books = [];

  List<Book> get books => _books;

  Future<void> fetchBooks() async {
    _books = await _bookService.fetchBooks();
    notifyListeners();
  }

}
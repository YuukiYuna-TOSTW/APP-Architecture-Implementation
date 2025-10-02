import 'package:flutter/material.dart';
import 'package:app_structure_testing/view_model/book_view_model.dart';
import 'package:provider/provider.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {

    final bookViewModel = Provider.of<BookViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoyofest Library'),
      ),

      body: Center(
        child: ListView.builder(
          itemCount: bookViewModel.books.length,
          itemBuilder: (context, index) {
            final book = bookViewModel.books[index];
            return ListTile(
              title: Text(book.title),
              subtitle: Text(book.author),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bookViewModel.fetchBooks();
        },
        child: const Icon(Icons.download),
      ),

    );
      
  }
}

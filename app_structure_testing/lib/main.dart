import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_structure_testing/view/book_view.dart';
import 'package:app_structure_testing/view_model/book_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BookViewModel()),
      ],
      child: MaterialApp(
        title: 'Hoyofest Library',
        
        home: BookView(),
      ),
    );
  }
}


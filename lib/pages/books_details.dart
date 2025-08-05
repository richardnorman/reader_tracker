import 'package:flutter/material.dart';
import 'package:reader_tracker/models/book.dart';
import 'package:reader_tracker/utils/book_details_arguments.dart';

class BooksDetails extends StatefulWidget {
  const BooksDetails({super.key});

  @override
  State<BooksDetails> createState() => _BooksDetailsState();
}

class _BooksDetailsState extends State<BooksDetails> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as BookDetailsArguments;
    final Book book = args.itemBook;
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
    );
  }
}
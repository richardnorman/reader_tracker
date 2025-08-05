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
    final args =
        ModalRoute.of(context)?.settings.arguments as BookDetailsArguments;
    final Book book = args.itemBook;
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              if (book.imageLinks.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    book.imageLinks['thumbnail'] ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              Column(
                children: [
                  Text(book.title, style: theme.headlineSmall),
                  Text(book.authors.join(', '), style: theme.labelLarge),
                  Text("Published: ${book.publishedDate}", style: theme.bodySmall),
                  Text("Page Count: ${book.pageCount}", style: theme.bodySmall),
                  Text("Language: ${book.language}", style: theme.bodySmall),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.bookmark), label: Text("Save to Reading List")),
                      ElevatedButton.icon(onPressed: () {}, icon: Icon(Icons.favorite), label: Text("Add to Favorites")),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text("Description", style: theme.titleMedium),
                  SizedBox(height: 8.0),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary.withAlpha(50),
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text(
                      book.description,
                      style: theme.bodyMedium,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 24.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
